# 冷暖光映射表与采样方法

## 采样环境

- NOOK GlowLight 4，固件 8.1.1.110，屏幕 1072×1448
- 设备已 root，`su` 可用
- 用系统自带阅读器 GLOWLIGHT 页面的 Cool ←→ Warm 滑块逐档拖动，每次读取底层节点

## 节点

| 节点 | 含义 |
|---|---|
| `/sys/class/backlight/lm3630a_led/brightness` | 主亮度通道 |
| `/sys/class/backlight/lm3630a_leda/brightness` | 暖光通道 |
| `/sys/class/backlight/lm3630a_ledb/brightness` | 冷光通道 |

`leda` / `ledb` 的数值范围都是 0–255。不同固件版本节点名可能不同，脚本会自动探测。

## 色温映射表

GL4 上滑块位置与读数的对应关系。`color` 是自定义刻度，0 = 最暖，10 = 最冷。

| color | leda（暖） | ledb（冷） | 观感 |
|---:|---:|---:|---|
| 0 | 255 | 0 | 纯暖光 |
| 1 | 251 | 172 | |
| 2 | 247 | 196 | |
| 3 | 242 | 211 | 偏暖 |
| 4 | 236 | 221 | |
| 5 | 230 | 229 | 中性 |
| 6 | 222 | 236 | |
| 7 | 212 | 241 | |
| 8 | 198 | 246 | 偏冷 |
| 9 | 173 | 250 | |
| 10 | 0 | 254 | 纯冷光 |

`ctm_color.sh` 用的是 0–100 的属性值，每次加 10，与上表一一对应（属性 100 = color 10 = 最冷）。

滑块位置与 color 大致对应（1072×1448 屏，轨道 y≈845）：
x=170→9, 300→8, 365→7, 430→6, 560→5, 625→4, 690→3, 820→2, 885→1, 950→0。

## 亮度映射

单独改系统亮度时，框架会重写主通道和冷通道，但**不会动暖光通道**：

| screen_brightness | 主 led | ledb（冷） | leda（暖） |
|---:|---:|---:|---:|
| 30 | 30 | 96 | 不变（通常为 0） |
| 60 | 60 | 161 | 不变 |
| 100 | 100 | 254 | 不变 |

## 关键顺序

改亮度会重写 `ledb`，所以：

1. 先设亮度（`settings put system screen_brightness N`）
2. 等一小会儿让框架写完
3. 再写 `leda` 和 `ledb`

反过来做，刚写好的色温会被框架覆盖掉。这是实测踩过的坑，两个脚本都按这个顺序实现。

## 复现方法

```bash
# 读当前三个通道
adb shell su -c 'cat /sys/class/backlight/lm3630a_led/brightness \
  /sys/class/backlight/lm3630a_leda/brightness \
  /sys/class/backlight/lm3630a_ledb/brightness'

# 拖滑块后重复读取，记录每一档
```

数值会受当前亮度影响，建议固定一个亮度（例如 100）再逐档采样。
