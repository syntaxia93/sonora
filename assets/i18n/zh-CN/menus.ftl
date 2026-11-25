# track menu
menu-new-playlist = 新建播放列表
menu-import-playlist = 导入播放列表…
menu-no-playlists = 没有播放列表
menu-search-playlists = 搜索播放列表
menu-save-library = 音乐库
menu-add-to-library = 添加到收藏
menu-remove-from-library = 从收藏中移除
menu-remove-tracks-from-playlist = { $count ->
    [one] 从播放列表中移除 { $count } 首歌曲
   *[other] 从播放列表中移除 { $count } 首歌曲
}
menu-remove-tracks-from-history = { $count ->
    [one] 从历史记录中移除 { $count } 首歌曲
   *[other] 从历史记录中移除 { $count } 首歌曲
}
menu-download = 下载
menu-remove-download = 移除下载
menu-downloading = 正在下载，点击可停止
menu-start-radio = 开始电台
menu-go-to-album = 前往专辑
menu-go-to-artist = 前往歌手
menu-go-to-playlist = 前往播放列表
menu-view-details = 查看详情
menu-copy-link = 复制链接
menu-select-all = 全选
menu-remove-from-queue = 从播放队列中移除
menu-export-playlist = 导出播放列表…
menu-add-playlist-to-library = 添加到音乐库
menu-remove-playlist-from-library = 从音乐库中移除
menu-make-playlist-public = 设为公开
menu-make-playlist-private = 设为私密
menu-play-artist = 播放歌手

# playlist editor
menu-copy-link-none = 这里没有可分享的链接
menu-copy-link-local = 本地歌手和播放列表没有链接
menu-play-next = { $count ->
    [1] 下一首播放
   *[other] 接着播放 { $count } 首歌曲
}
menu-add-to-queue = { $count ->
    [1] 添加到播放队列
   *[other] 将 { $count } 首歌曲添加到播放队列
}
menu-play-last = { $count ->
    [1] 最后播放
   *[other] 将 { $count } 首歌曲放到最后播放
}
menu-delete-track-files = { $count ->
    [1] 删除歌曲文件
   *[other] 删除 { $count } 个歌曲文件
}
menu-add-to-playlist = { $count ->
    [1] 添加到播放列表
   *[other] 将 { $count } 首歌曲添加到播放列表
}

# smart rules
smart-rules-create-title = 新建智能播放列表
smart-rules-edit-title = 智能规则
smart-rules-loading = 正在从服务器读取规则…
smart-rules-saving = 正在保存…
smart-rules-failed-title = 无法读取规则
smart-rules-match-all = 匹配全部
smart-rules-match-any = 匹配任一
smart-rules-match-toggle = 匹配以下全部规则或其中任一规则
smart-rules-of-following = 以下规则
smart-rules-add-condition = 添加条件
smart-rules-add-group = 添加分组
smart-rules-remove-group = 移除此分组
smart-rules-remove-condition = 移除此规则
smart-rules-empty-group = 尚未添加规则
smart-rules-field = 字段
smart-rules-operator = 运算符
smart-rules-value-placeholder = 值
smart-rules-range-and = 和
smart-rules-true = 是
smart-rules-false = 否
smart-rules-unknown-note = 按服务器返回的内容保留
smart-rules-synced-title = 此播放列表从文件同步
smart-rules-synced-message = 下次扫描可能会覆盖在此处所做的修改。
smart-rules-sort-label = 排序依据
smart-rules-sort-placeholder = title、dateloved、random…
smart-rules-order-none = 不指定顺序
smart-rules-order-asc = 升序
smart-rules-order-desc = 降序
smart-rules-order-toggle = 排序方向
smart-rules-limit-label = 数量限制
smart-rules-limit-placeholder = 全部匹配结果
smart-rules-problem-empty-group = 此分组没有规则
smart-rules-problem-missing-field = 此条件未指定字段
smart-rules-problem-range = 范围需要指定下限和上限
smart-rules-problem-days = 天数必须为数字
smart-rules-problem-playlist = 此规则需要指定播放列表
smart-rules-problem-truth = 此规则需要是或否的值
smart-rules-problem-compared = 此值不适用于该规则
smart-rules-problem-boolean = 布尔字段需要是或否的值
smart-rules-problem-bad-order = 排序方向必须为 asc 或 desc

# playlist editor
playlist-name-placeholder = 播放列表名称
playlist-create-title = 创建播放列表
playlist-create-shelf = 保存到
playlist-edit-title = 编辑播放列表
playlist-cover-choose = 选择图片
playlist-cover-remove = 移除封面
playlist-cover-unopenable = Sonora 无法打开这个文件
playlist-cover-too-large = 这张图片超过 40 MB
playlist-cover-not-a-picture = 这个文件不是 JPEG、PNG 或 WebP 图片

# cover viewer
playlist-delete-title = 删除播放列表
playlist-again-title = 再次添加？
playlist-again-confirm = 这首歌曲已在“{ $name }”中。要再添加一份吗？
playlist-again-add = 再次添加

# confirm

# cover viewer
cover-view = 查看封面
cover-zoom-in = 放大
cover-zoom-out = 缩小
cover-zoom-fit = 适应窗口

# confirm
confirm-delete-track-files-title = 删除歌曲文件？
confirm-delete-track-files = 文件将从磁盘上永久删除，此操作无法撤销。
confirm-uninstall-widevine-title = 卸载 Widevine 模块？
confirm-uninstall-widevine = Sonora 会删除从 Google 下载的副本。在重新下载之前，Apple Music 的歌曲将无法播放。
confirm-remove-soloist-title = 移除 Soloist？
confirm-remove-soloist = Sonora 将删除 Soloist 程序、你的 API 密钥及其登录信息，Spotify 将恢复使用内置播放器。
confirm-remove-downloads-title = 移除全部下载？
confirm-remove-downloads = 你下载的所有歌曲都会从这台电脑上删除，包括每个服务下的。在你重新下载之前，它们会改为在线播放。
confirm-delete-named = 删除“{ $name }”？此操作无法撤销。
