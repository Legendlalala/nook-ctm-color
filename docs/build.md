# 从源码重建 APK

需要：apktool 2.9.3 或更新、JDK（提供 `jarsigner`）、**你自己生成的签名密钥**。

本仓库不分发编译好的 APK，也不包含任何 keystore 或签名密码。

## 1. 回编译

`app/` 就是 apktool 工程根目录（`res/layout` 在 `app/res/layout`，不是 `build/apk/res`）。

```bash
java -jar apktool.jar b app -o unsigned.apk
```

## 2. 签名

```bash
cp unsigned.apk signed.apk
jarsigner -keystore <你的 keystore> -storepass <密码> \
  -sigalg SHA256withRSA -digestalg SHA-256 \
  signed.apk <你的 alias>
```

不要复用 `app/original/META-INF/` 里的签名文件，那是上游 APK 的旧签名。

## 3. 装到设备并部署脚本

```bash
adb install -r signed.apk
adb push scripts/ctm_color.sh /data/local/tmp/ctm_color.sh
adb shell chmod 755 /data/local/tmp/ctm_color.sh
```

`SafeHelper` 会通过 `su` 写 `persist.sys.ctm.color` 并执行这个脚本，路径是写死的，别改。

## 4. 授权

设备需要 root。首次触发色温调节时 Magisk 会弹授权请求，需要允许 shell / 对应 uid 的 su 请求。

注意两点：

- 重装 APK 会更换 uid，之前给的授权会失效，要重新允许一次
- 这是 32 位平台；如果同时在做 Magisk boot 补丁，补丁目录里只能放 `magisk32`，混入 `magisk64` 会导致开机正常但 root 完全失效

## 5. 验证

```bash
# 拖滑块到底后，读底层节点
adb shell su -c 'cat /sys/class/backlight/lm3630a_leda/brightness'
adb shell su -c 'cat /sys/class/backlight/lm3630a_ledb/brightness'
```

最暖应为 255 / 0，最冷应为 0 / 254。完整映射表见 `docs/color-table.md`。

也可以用 `scripts/frontlight.sh` 在电脑端直接验证硬件，不装 APK 也能测：

```bash
export ADB=/path/to/adb
bash scripts/frontlight.sh --show
bash scripts/frontlight.sh 100 0
```

## 常见问题

- **色温那一行不显示**：检查 `MainActivity.smali` 里 `mIsColourAvailable` 是否为 true，以及布局里色温标题的 `visibility="gone"` 是否去掉了。
- **滑块拖了没反应**：多半是 `ctm_color.sh` 没推到 `/data/local/tmp/` 或没给执行权限，也可能是 su 授权没通过。
- **改完色温又被冲掉**：先设亮度、再写冷暖通道。框架改亮度时会重写冷通道，顺序反了色温会被覆盖。
- **开关显示成月牙**：见 `CHANGES.md` 里的圆角与尺寸说明。
