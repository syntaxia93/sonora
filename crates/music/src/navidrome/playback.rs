//! Playback for a navidrome server: what [`crate::engine`] needs that navidrome's own routes
//! provide.
//!
//! Almost nothing, as it turns out. The server hands over an ordinary audio file, so the stream
//! takes the bytes as they come and rodio decodes them. The threads, the queue, the preload and
//! the gapless join are the engine's.

use std::time::Duration;

use anyhow::Result;
use async_trait::async_trait;

use crate::aac::Aac;
use crate::engine::{self, Fetch, Loudness};
use crate::mp4::{Input, Prepared, Remote};
use crate::navidrome::client::{Details, NavidromeClient};
use crate::stream::{Plain, Stream};
use crate::{PlaybackConfig, PlaybackEvents, PlaybackFactory, Player};

/// A track downloading, and what the server says about its length and loudness.
#[derive(Clone)]
pub struct Loaded {
    stream: Stream,
    details: Details,
    prepared: Prepared,
}

pub struct Factory {
    client: NavidromeClient,
}

impl Factory {
    pub fn new(client: NavidromeClient) -> Self {
        Self { client }
    }
}

impl PlaybackFactory for Factory {
    fn start(&self, config: PlaybackConfig) -> (Box<dyn Player>, Box<dyn PlaybackEvents>) {
        engine::start(
            Navidrome {
                client: self.client.clone(),
            },
            config,
        )
    }
}

struct Navidrome {
    client: NavidromeClient,
}

#[async_trait]
impl Fetch for Navidrome {
    type Loaded = Loaded;
    type Source = rodio::Decoder<Input>;

    fn name(&self) -> &'static str {
        "navidrome"
    }

    /// Opens the stream and asks for the length and loudness at the same time, so neither round
    /// trip waits on the other. The preroll usually covers the lookup entirely.
    async fn load(&self, id: &str) -> Result<Loaded> {
        let (stream, details) = tokio::join!(
            async {
                let response = self.client.open_stream(id).await?;
                let remote = Remote::new(&response);
                let mut stream = Stream::open(response, Plain).await?;
                let prepared = Prepared::load(
                    &mut stream,
                    remote.as_ref().map(|remote| (self.client.http(), remote)),
                )
                .await?;
                anyhow::Ok((stream, prepared))
            },
            self.client.details(id),
        );
        let (stream, prepared) = stream?;
        Ok(Loaded {
            stream,
            details,
            prepared,
        })
    }

    fn length(&self, loaded: &Loaded) -> Option<Duration> {
        loaded.details.duration
    }

    fn loudness(&self, loaded: &Loaded) -> Option<Loudness> {
        loaded.details.loudness
    }

    async fn downloaded(&self, loaded: &Loaded) {
        loaded.stream.finished().await;
    }

    /// Opens a track whose metadata was prepared on the cancellable load task.
    fn open(&self, id: &str, loaded: &Loaded, at: Duration) -> Option<Self::Source> {
        let total = loaded.stream.total();
        let mut builder = rodio::Decoder::builder()
            .with_symphonia_decoder::<Aac>()
            .with_data(loaded.prepared.reader(&loaded.stream));
        if let Some(total) = total {
            builder = builder.with_byte_len(total);
        }
        let mut decoder = match builder
            .with_seekable(loaded.prepared.seekable(total, &loaded.stream))
            .build()
        {
            Ok(decoder) => decoder,
            Err(error) => {
                log::warn!("playback: cannot decode the navidrome track {id}: {error}");
                return None;
            }
        };
        if !at.is_zero()
            && let Err(error) = rodio::Source::try_seek(&mut decoder, at)
        {
            log::warn!(
                "playback: cannot start the navidrome track {id} at {}s: {error}",
                at.as_secs()
            );
        }
        Some(decoder)
    }

    /// A progressive file opens without seeking, so later seeks reopen it with its current length.
    fn reopen_to_seek(&self) -> bool {
        true
    }
}
