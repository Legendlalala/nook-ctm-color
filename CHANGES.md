# 相对上游的改动清单

基线：`THE-XSX/nook-ctm` 的 `main` 分支（commit `7339066f`），对应本地 `work/nook-ctm.zip`。
下面是逐文件 diff 的结果，`app/` 内未列出的文件均保持上游原样。

上游原始 README 见 `README.upstream.md`，版权与致谢声明未作改动。

---

## 一、功能：加回色温

| 文件 | 改动 | 原因 |
|---|---|---|
| `app/smali/com/example/ctm/MainActivity.smali` | 把 `mIsColourAvailable` 硬编码为 true | 上游用 `hw.CTM.dev == "lm3630a_led"` 判断色温是否可用；GL4 上该属性为空，导致色温整节 UI 被隐藏 |
| `app/smali/com/example/ctm/SafeHelper.smali` | `setFrontlightBrightnessColor` 改为 `su -c setprop persist.sys.ctm.color <n>` + 执行 `/data/local/tmp/ctm_color.sh` | 原实现调用 `PowerManager.setFrontlightBrightnessColor()`，该接口是 signature 级权限，普通应用调用必失败 |
| `app/res/layout/activity_main.xml` | 色温标题行去掉 `android:visibility="gone"` | 让色温控件显示出来 |

验证：拖到最暖读到底层 `leda=255 / ledb=0`，拖到最冷 `leda=0 / ledb=254`，滑块确实驱动硬件。

`ctm_color.sh` 用的是逐档实机采样得到的映射表，见 `docs/color-table.md`。

## 二、界面：墨水屏重做（四版迭代）

| 文件 | 改动 |
|---|---|
| `app/res/layout/activity_main.xml` | 去掉 ± 按钮和左侧图标、滑块占满整行、数值 38dip 粗体右对齐、去掉分隔线改用留白分段、左右边距 44dip；外层套 `ScrollView` |
| `app/res/values/dimens.xml` | 字号、间距、边距统一调整 |
| `app/res/drawable/pg_brightness.xml` | 滑块轨道改 12dip：白底 + 2dip 黑边 + 黑色进度填充（原 progress 与 background 都是黑的，看不出拖到哪） |
| `app/res/drawable/switch_thumb_button.xml` | thumb 改 26dp 白填充 + 黑边椭圆 |
| `app/res/drawable/seekbar_thumb.xml` | 新增，30dip 矢量圆点，替换 `seekbar_thumb.png` |
| `app/res/drawable/switch_bg.xml` | 新增，开关 track 的开启态（黑底圆角矩形） |
| `app/res/drawable/switch_bg_disable.xml` | 新增，开关 track 的关闭态（白底黑描边） |

同时删除了上游的 `seekbar_thumb.png` / `switch_bg.png` / `switch_bg_disable.png`（被上面的矢量资源取代）。

### 踩过的坑

- 屏高只有 413dp（1072×1448 @560dpi → 1448/3.5）。按常规间距排，最后一项会被挤出屏幕，必须套 `ScrollView` 并把间距收到 34dip。
- `switch_bg.png` 原图 118×56 像素，在 560dpi 下只有 33.7×16dp。thumb 设太大就变成「球插在棍子上」。
- 矢量 track 的圆角半径超过高度一半会被啃成月牙。正确做法：显式指定 Switch 为 68×34dp，圆角 = 高度一半（14dip），且不写 `<size>`。
- thumb 必须带黑边，否则白底白球在白背景上看不见，看起来也是月牙。

## 三、按型号自动隐藏色温（v1.5）

4e（BNRV1000）只有单色前光，没有冷光 LED，色温滑块拖了没视觉效果。改成按型号判断：

| 文件 | 改动 |
|---|---|
| `app/smali/com/example/ctm/MainActivity.smali` | `.line 333` 处把 `const/4 v5, 0x1` 换成 `Build.MODEL.contains("BNRV1000")` 取反 |

```smali
sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v6, "BNRV1000"
invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v5
xor-int/lit8 v5, v5, 0x1
iput-boolean v5, p0, Lcom/example/ctm/MainActivity;->mIsColourAvailable:Z
```

- `BNRV1000`（4e）→ contains=true → 取反=false → 色温整节隐藏
- `BNRV1100`（GL4）→ contains=false → 取反=true → 色温正常显示

一个包通吃两种机型。

## 四、v1.6 改进

### 4.1 亮度档位 11 → 101

| 文件 | 改动 |
|---|---|
| `MainActivity.smali` | `BRIGHTNESS_LEVELS` 从 `[5,10,...,100]`（11 档）扩到 `[0,1,...,100]`（101 档） |
| `MainActivity.smali` | 亮度百分比显示 `index*100/10` → `index*100/100` |
| `MainActivity$ChangedListener.smali` | 同上 |

101 档配合背光的原生分辨率，调光更细腻，拖滑块时不再有明显的台阶感。

### 4.2 色温改成 exec(String[]) + 不阻塞

`SafeHelper.setFrontlightBrightnessColor` 重写：

```smali
# 原来：两次 exec + 两次 waitFor
Runtime.exec("su -c setprop persist.sys.ctm.color <n>")
Process.waitFor()
Runtime.exec("su -c sh /data/local/tmp/ctm_color.sh")
Process.waitFor()

# 现在：一次 exec(String[]) 传完整命令，不 waitFor
String[] cmd = {"su", "-c",
    "setprop persist.sys.ctm.color <n>; sh /data/local/tmp/ctm_color.sh"};
Runtime.getRuntime().exec(cmd);
```

两个关键点：

- **`Runtime.exec(String)` 会按空格切分**：`su -c sh /path` 会被切成 4 个参数，
  su 只把 `sh` 当作命令，脚本路径变成 `$0`，实际执行的是空的 sh。必须用 `exec(String[])`。
- **不能 `waitFor()`**：会在 UI 线程同步等 1-2 秒，拖动滑块时事件排队。

### 4.3 脚本零 fork

脚本在滑块拖动时被高频调用，不能有重操作：

| 禁止 | 原因 |
|---|---|
| `settings get/set` | 每次 fork 一个 `app_process`，约 50MB |
| `( cmd ) &` 后台子进程 | 调用次数 × 进程数 = 乘法效应 |
| `date` / `stat` / 任何外部命令 | 都是 fork |

`scripts/ctm_color.sh` 只用 `getprop`（轻量 C 程序）和 shell 内建，
执行时间 <20ms。

## 五、未纳入仓库的内容

- `build/` 整个目录（apktool 编译中间产物：`classes.dex`、`resources.arsc`、`resources.zip` 等）
- 编译好的 APK、签名私钥、keystore
- 任何设备的序列号、分区备份、getprop 全文
- 从第三方商业设备固件中提取的原版 `ctm.apk` / `odex` / `vdex`

`app/original/META-INF/` 里的签名文件是上游 APK 自带的公钥/清单，仅为 apktool 回编译保留，不是私钥。

## 六、重建方式

见 `docs/build.md`。重装 APK 会更换 uid，Magisk 的 su 授权需要重新做。

## 七、机型适配对照

| 机型 | MODEL | 前光节点 | 色温 |
|---|---|---|---|
| NOOK GlowLight 4 | `BNRV1100` | `lm3630a_leda` / `ledb` | 显示 |
| NOOK GlowLight 4e | `BNRV1000` | 单色 | **隐藏**（v1.5 判断） |

两台共用一个 APK 和同一个 `scripts/ctm_color.sh`，
差异只在 v1.5 那个型号判断（4e 隐藏色温 UI）。
