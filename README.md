# nook-ctm-color

给 NOOK GlowLight 4 加回冷暖光调节，界面按墨水屏重做。

基于 [THE-XSX/nook-ctm](https://github.com/THE-XSX/nook-ctm)，上游原 README 见 `README.upstream.md`。

## 为什么上游没有色温

上游靠 `hw.CTM.dev == "lm3630a_led"` 判断色温是否可用，GL4 上这个属性是空的，色温那一行就被隐藏了。但硬件是好的 —— 系统阅读器拖到最暖，暖通道 255、冷通道 0。

所以这里把判定写死、放出色温 UI、调色温改走 root 写 backlight 节点。

## 用法

```bash
adb push scripts/ctm_color.sh /data/local/tmp/ctm_color.sh
adb shell chmod 755 /data/local/tmp/ctm_color.sh
```

装好 APK 后色温走 `persist.sys.ctm.color`，0 最暖、100 最冷，步进 10。

从源码重建 APK 见 `docs/build.md`。

## 实测

GL4（8.1.1.110）和 4e（8.1.4.100）结果一致：

| color | leda | ledb |
|---|---|---|
| 0 | 255 | 0 |
| 100 | 0 | 254 |

逐档数据和采样方法见 `docs/color-table.md`。

## 注意

- 需要 root
- 色温重启后不保持
- 只在这两台机器上验证过

## 许可

MIT，见 `LICENSE`。上游代码版权归原作者。
