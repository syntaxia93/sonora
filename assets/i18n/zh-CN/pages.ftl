members-title = 成员
members-empty = 发起或加入一个会话后，就能看到谁和你一起在听
members-picked = 将当前播放的歌曲加入了队列

# login
login-restoring = 正在检查已保存的会话…
login-authorizing = 正在浏览器中等待授权…
login-signed-in = 已登录为 { $name }
login-failed-title = 登录失败
login-window-title = 使用 { $provider } 登录
login-problem-region = Spotify 不会从你所在的国家/地区开启会话。请从你的所在国家/地区登录，或更改 Spotify 账户上的国家/地区。
login-problem-credentials = 你保存的此服务会话已失效。请重新登录以继续。
login-problem-password = 服务器未接受此用户名和密码。请检查后重试。
login-problem-network = Sonora 无法连接到音乐服务。请检查网络连接并重试。
login-problem-blocked = 音乐服务拒绝来自当前网络的连接。如果你正在使用 VPN，请尝试切换服务器或关闭 VPN。
login-problem-cancelled = 浏览器中的登录未获授权，或已超时。请重新开始以完成登录。
login-problem-refused = Spotify 拒绝了登录请求。请稍等片刻后重试。
login-problem-premium = Sonora 通过 Spotify Premium 串流，而此账户没有 Premium。请使用 Premium 账户登录以继续。
login-problem-subscription = 此 Apple ID 没有有效的订阅。
login-subscription-check = 查看 Apple Music
login-sign-in = 使用 { $provider } 登录
login-connect-cookies = 手动粘贴 Cookies
login-cookie-open = 打开 { $provider }
login-cookie-submit = 继续
login-cookie-hint = 在此粘贴 Cookie 请求头
login-cookie-step-1 = 打开 music.youtube.com 并确保你已登录。使用无痕窗口效果最好。
login-cookie-step-2 = 按 F12，打开网络（Network）标签页并刷新页面。
login-cookie-step-3 = 选择任意名为“browse”或“next”的请求。
login-cookie-step-4 = 在标头（Headers）中，找到请求标头（Request Headers）下的 Cookie，右键点击并复制其值。
login-cookie-step-note = 请确保粘贴完整值，包括 SAPISID 和 __Secure-3PAPISID。
login-cookie-header-title = 粘贴你的 { $provider } Cookies 以完成登录
login-cookie-apple-step-3 = 选择任意发往 { $site } 的请求。
login-cookie-apple-note = 请确保粘贴完整值，包括 { $cookie }。
login-cookie-named-title = 粘贴你的 { $provider } Cookie 以完成登录
login-cookie-named-hint = 在此粘贴 Cookie 的值
login-cookie-named-step-1 = 打开 { $site } 并确保你已登录。
login-cookie-named-step-2 = 按 F12，在 Firefox 中打开存储（Storage）标签页，或在 Chrome 中打开应用（Application）标签页。
login-cookie-named-step-3 = 展开 Cookies，选择 { $site }，找到名为 { $cookie } 的 Cookie。
login-cookie-named-step-4 = 双击它的值并复制。
login-cookie-named-note = 只需 { $cookie } 的值即可。从网络（Network）标签页复制的完整 Cookie 请求头同样可用。
login-guest-title = 访客模式
login-guest-use = 使用访客模式
login-usage-consent = 帮助我们估算有多少人使用 Sonora。
login-device-code = 在 { $url } 输入此代码
login-server-title = 连接到你的音乐服务器
login-server-detail = Navidrome、Gonic 或其他 OpenSubsonic 服务器。
login-server-hint = https://music.example.com
login-jellyfin-title = 连接到 Jellyfin
login-jellyfin-detail = 使用你的 Jellyfin 账户登录。
login-quick-connect = 使用 Quick Connect 登录
login-username-hint = 用户名
login-password-hint = 密码
login-server-submit = 登录
login-account-title = 选择一个账户
login-account-detail = 此会话登录了多个 Google 账户。请选择 Sonora 应使用的账户。
login-profile-title = 选择用户档案
login-profile-detail = 此账户有多个用户档案。请选择 Sonora 要使用的档案。
login-server-pick-title = 选择服务器
login-server-pick-detail = 此 Plex 账户可以访问多个服务器。请选择要在 Sonora 中播放的服务器。
login-library-title = 选择音乐库
login-library-detail = 此服务器有多个音乐库。请选择要在 Sonora 中显示的音乐库。
login-choose-title = 登录 { $provider }
login-choose-detail = 选择登录 { $provider } 的方式。
login-providers = 音乐服务
login-welcome-title = 欢迎使用 Sonora
login-welcome-detail = 稍后可在设置中添加更多服务。
login-or = 或

# album and playlist pages

# artist page
artist-eyebrow = 歌手
artist-monthly-listeners = { $count ->
    [one] { $value } 位每月听众
   *[other] { $value } 位每月听众
}
artist-followers = { $count ->
    [one] { $value } 位关注者
   *[other] { $value } 位关注者
}
artist-popular = 热门
artist-popular-empty = 这位歌手暂无可播放内容
artist-favorite-songs = 你收藏的歌曲
artist-favorite-songs-count = { $count ->
    [one] 已收藏 { $count } 首歌曲
   *[other] 已收藏 { $count } 首歌曲
}
artist-releases = 发行作品
artist-filter-all = 全部
artist-filter-singles = 单曲
artist-filter-eps = EP
artist-appears-on = 参与作品
album-also-like = 你可能还喜欢
album-tab-artists = 歌手
album-label = ℗ { $label }

# user profile page
user-eyebrow = 个人资料
user-followers = { $count ->
    [one] { $value } 位关注者
   *[other] { $value } 位关注者
}
user-following = { $count ->
   *[other] 正在关注 { $value } 人
}
user-playlists = 公开播放列表
user-playlists-empty = 还没有公开播放列表

# home page
home-quick-picks = 快速推荐
home-quick-picks-empty = 收藏几首歌后，它们会显示在这里
home-recently-added = 最近添加
home-newest-releases = 最新发行
home-recently-played = 最近播放
home-most-played = 最常播放
home-favorite-albums = 收藏的专辑
home-artists = 歌手
home-collection-albums = 来自你收藏的专辑
home-for-you = 为你推荐
home-from-your-library = 来自你的音乐库
home-most-played-albums = 播放最多的专辑
home-top-playlists = 热门歌单
home-top-albums = 热门专辑
home-top-songs = 热门单曲

# powerbar (quick search)
powerbar-title = 快速搜索
powerbar-open = 打开
powerbar-song = 前往歌曲

# search page
search-placeholder = 你想听什么？
search-browse = 浏览全部
search-submit = 搜索
search-open-link = 在 Sonora 中打开链接
search-recent = 最近搜索
search-forget = 从历史记录中移除
genre-empty = 这里暂时没有可显示的内容
search-best-match = 最佳匹配
search-no-matches = 无匹配结果
search-results = 结果
search-artists = 歌手
search-albums-playlists = 专辑和播放列表
search-tag = { $kind } ·
search-saved =
    { $count ->
        [one] 音乐库中有 { $count } 首歌曲
       *[other] 音乐库中有 { $count } 首歌曲
    }

# song page
song-eyebrow = 歌曲
song-view-album = 查看专辑
song-about = 关于这首歌
song-album = 专辑
song-released = 发行日期
song-streams = 播放次数
song-position = 位置
song-label = 唱片公司
song-popularity = 热度
song-disc-track = 第 { $disc } 张碟，第 { $track } 首
song-track = 第 { $track } 首
song-credits = 制作人员
song-performed-by = 表演者
song-details = 流派和详情
song-genres = 流派
song-language = 语言
song-content = 内容
song-explicit = 露骨内容
song-local = 本地文件
song-clean = 干净版
artist-about = 关于歌手
artist-about-fallback = 探索这位歌手的热门歌曲和发行作品。
artist-about-open = 前往歌手
song-copyright = © { $notice }
track-row-name = { $title }，{ $artists }

# tags
tags-edit-title = 编辑标签
tags-sheet-song = 歌曲
tags-sheet-album = 专辑
tags-sheet-details = 详情
tags-title = 标题
tags-artist = 歌手
tags-artists = 歌手
tags-add-artist = 添加歌手
tags-remove-artist = 移除该歌手
tags-track = 歌曲编号
tags-track-total = 发行歌曲总数
tags-disc = 碟片编号
tags-disc-total = 发行碟片总数
tags-album = 专辑
tags-album-artist = 专辑歌手
tags-year = 年份
tags-genre = 流派
tags-composer = 作曲家
tags-publisher = 发行商
tags-isrc = ISRC
tags-comment = 备注
