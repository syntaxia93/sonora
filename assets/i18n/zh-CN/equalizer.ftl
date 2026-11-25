equalizer-advanced = 高级
equalizer-simple = 简单
equalizer-sound = 声音
equalizer-profile-default = 默认
equalizer-profile-new = 配置 { $number }
equalizer-profile-pasted = 粘贴的配置
equalizer-profile-name-hint = 配置名称
equalizer-save-as = 另存为配置
equalizer-rename = 重命名配置
equalizer-delete = 删除配置
equalizer-bass = 低频
equalizer-treble = 高频
equalizer-tone-reset = 重置为 0 dB
equalizer-preamp = 前置增益
equalizer-preamp-auto = 自动
equalizer-preamp-manual = 手动
equalizer-decibels = dB
equalizer-hertz = Hz
equalizer-q = Q
equalizer-octaves = 倍频程
equalizer-no-gain = —
equalizer-filters = 滤波器
equalizer-no-filters = 还没有滤波器。添加一个、选用上面的预设，或导入一份配置。
equalizer-add-filter = 添加滤波器
equalizer-remove-filter = 移除滤波器
equalizer-filter = 滤波器 { $number }
equalizer-filter-kind = 滤波器 { $number } 的类型
equalizer-kind-peak = 峰值
equalizer-kind-low-shelf = 低架
equalizer-kind-high-shelf = 高架
equalizer-kind-low-pass = 低通
equalizer-kind-high-pass = 高通
equalizer-kind-notch = 陷波
equalizer-kind-band-pass = 带通
equalizer-kind-all-pass = 全通
equalizer-transfer = 导入与导出
equalizer-import = 导入
equalizer-export = 导出
equalizer-import-file = 导入文件…
equalizer-export-file = 导出文件…
equalizer-imported = 已导入 { $name }
equalizer-imported-skipped = 已导入 { $name }，但忽略了 { $count ->
            [one] 一行
           *[other] { $count } 行
        }
equalizer-import-nothing = 没有找到可导入的均衡器设置
equalizer-import-too-many = 未导入：已启用 { $count ->
            [one] 一个滤波器
           *[other] { $count } 个滤波器
        }，超过一份配置能容纳的数量
equalizer-import-too-large = 未导入：文本超过 1 MB，对均衡器配置来说太大
equalizer-filter-limit = 一份配置最多包含 { $max } 个滤波器。
equalizer-paste-empty = 剪贴板里没有文本
equalizer-copied = 已把配置复制为 Equalizer APO 文本
equalizer-exported = 已导出配置
equalizer-file-unreadable = 无法读取文件
equalizer-file-unwritable = 无法写入文件
equalizer-value-refused = 保留了原来的值
equalizer-skipped-line = 第 { $line } 行：{ $reason }
equalizer-skipped-more = 还有 { $count ->
            [one] 一行
           *[other] { $count } 行
        }
equalizer-skip-unknown-type = 未知的滤波器类型 { $name }
equalizer-skip-unreadable = 不是 Sonora 能识别的滤波器
equalizer-skip-no-frequency = 没有频率
equalizer-skip-no-gain = 没有增益
equalizer-skip-no-width = 没有 Q 或带宽
equalizer-skip-expression = 用表达式写的值
equalizer-skip-no-preamp = 前置增益不是数字
equalizer-skip-unsupported = 不支持 { $name }
equalizer-rules = 设备规则
equalizer-rule-other = 其他设备
equalizer-rule-playing = 当前播放
equalizer-rule-replaces = 替代它的规则
equalizer-rule-choose-device = 选择设备
equalizer-mode = 模式
equalizer-preamp-level = 前置增益电平
equalizer-no-gain-spoken = 无增益
equalizer-filter-frequency = 滤波器 { $number } 的频率
equalizer-filter-gain = 滤波器 { $number } 的增益
equalizer-filter-width = 滤波器 { $number } 的宽度
equalizer-graph = 频率响应
equalizer-graph-detail = { $count ->
    [0] 没有滤波器
    [one] 1 个滤波器
   *[other] { $count } 个滤波器
    }，前置增益 { $db } dB
equalizer-rule-device = 设备
equalizer-rule-choose-sound = 选择声音
equalizer-rule-add = 添加规则
equalizer-rule-remove = 移除规则
equalizer-output-port = { $device } · { $port }
equalizer-invalid-frequency = 频率必须在 { $low } 到 { $high } Hz 之间
equalizer-invalid-gain = 增益必须在 { $low } 到 { $high } dB 之间
equalizer-invalid-q = Q 必须在 { $low } 到 { $high } 之间
equalizer-invalid-octaves = 带宽必须在 { $low } 到 { $high } 倍频程之间
equalizer-invalid-shelf-octaves = 架式滤波器使用 Q，而不是带宽
equalizer-invalid-preamp = 前置增益必须在 { $low } 到 { $high } dB 之间
equalizer-overload = 削波 { $db } dB
equalizer-overload-slight = 削波不到 0.1 dB
equalizer-lower-preamp = 降低前置增益
equalizer-level = 电平
equalizer-status-bit-perfect = 位完美
equalizer-status-bit-perfect-detail = 从 Sonora 起就是位完美
equalizer-status-server = 之后由声音服务器转换到 { $khz } kHz
equalizer-status-altered = 非位完美，原因：
equalizer-status-separator = { "、" }
equalizer-status-equalized = EQ
equalizer-status-volume = 音量
equalizer-status-normalized = 已做响度归一
equalizer-status-direct = 由 Soloist 直接播放，不经过 Sonora
equalizer-status-rate = { $from } → { $to } kHz
equalizer-status-bits = { $from } → { $to } 位
equalizer-status-float = 浮点 → { $to } 位
equalizer-status-channels = { $from ->
    [1] 单声道
    [2] 立体声
   *[other] { $from } 声道
} → { $to ->
    [1] 单声道
    [2] 立体声
   *[other] { $to } 声道
}

# Frequency response graph
response-graph-readout = { $frequency } · { $direction ->
            [up] +{ $gain }
            [down] -{ $gain }
           *[flat] { $gain }
        } dB
