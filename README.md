# nook-ctm-color

给 NOOK GlowLight 4 加回**冷暖光调节**，并重做适配墨水屏的界面。

本仓库是**独立新建的衍生版本**，不是 GitHub fork。代码来源、授权链和改动范围都在下面写清楚。

## 它解决什么问题

社区里已有的 Android 8.1 适配版把老工具救活了，但明确写了「无色温调节」：它靠 `hw.CTM.dev == "lm3630a_led"` 判断色温是否可用，而 GL4 上这个属性是空的，色温那一行在布局里被直接隐藏。

GL4 的硬件其实完全正常 —— 系统自带阅读器把滑块拖到最暖，暖光通道 255、冷光通道 0。所以本版本做的是：放出色温 UI、把硬件判定写死、把调色温的调用改成走 root 写底层节点，并顺手把界面改成墨水屏上真正能看清的样子。

## 来源与授权链

1. **RyogoNA (Ryogo-X)**，XDA —— 为 Android 4.4 老 NOOK 开发的 `com.example.ctm` 对比度工具（原作）
2. **[THE-XSX/nook-ctm](https://github.com/THE-XSX/nook-ctm)** —— 将上述工具适配到 Android 8.1，去掉系统签名依赖，改为 su 提权运行
3. **本仓库** —— 在上述适配版基础上加回色温、重做 UI、补充实测数据与脚本

上游原始 README 原样保存在 [`README.upstream.md`](README.upstream.md)，其中的致谢、版权声明与「严禁任何形式的商业化及收费行为」表述**完整保留，未作删改**。上游 README 还写明「如原作者不希望此修改版公开，请随时提交 Issue，我将立即下架处理」，本仓库尊重该意愿。

上游适配仓库未提供开源许可证。本仓库**不对上游代码主张任何许可**，也不将其纳入下方 MIT 许可范围。

本仓库为**个人公益性技术分享**：免费公开、不收费、不挂商品卡、不用于任何商业或收费用途。不提供编译好的安装包，需要自己按 [`docs/build.md`](docs/build.md) 重建。

## 许可分区

| 范围 | 许可 |
|---|---|
| 本仓库原创的改动（`CHANGES.md` 列出的部分）、`scripts/`、`docs/` | MIT，见 `LICENSE` |
| `app/` 内上游原有的 smali / 资源 / AndroidManifest / apktool.yml | 无许可证，保留原状，版权归各自原作者，**不适用 MIT** |

`app/` 是完整的 apktool 工程，里面既有上游原样文件也有本仓库的改动，具体逐文件清单见 `CHANGES.md`。想只用纯原创、不碰任何第三方代码的部分，可以看 `scripts/` 与 `docs/color-table.md`，它们独立可用。

## 目录

```
app/                   apktool 工程（上游结构 + 本仓库改动），build/ 产物已排除
scripts/ctm_color.sh   设备端脚本：读属性、查映射表、写冷暖双通道
scripts/frontlight.sh  电脑端脚本：通过 adb 调亮度与色温
docs/color-table.md    逐档实测的冷暖光映射表与采样方法
docs/notes.md          硬件验证与排查记录
docs/build.md          从源码重建 APK 的步骤
CHANGES.md             相对上游的逐文件改动清单
README.upstream.md     上游原 README（版权声明原样保留）
```

## 部署要点

`SafeHelper` 改为通过 `su` 执行 `/data/local/tmp/ctm_color.sh`，所以装完 APK 还要把这个脚本推到设备上：

```bash
adb push scripts/ctm_color.sh /data/local/tmp/ctm_color.sh
adb shell chmod 755 /data/local/tmp/ctm_color.sh
```

色温值通过 `persist.sys.ctm.color` 传递，0 = 最暖、100 = 最冷，每次加 10。

## 实测环境

- NOOK GlowLight 4，Android 8.1（8.1.1.110），1072×1448，约 413dp 高
- GlowLight 4e，Android 8.1（8.1.4.100），764×1024，同一 SoC，节点可写
- 验证结果：拖到最暖 `leda=255 / ledb=0`，拖到最冷 `leda=0 / ledb=254`

## 已知限制

- 需要 root；未 root 设备无法写 backlight 节点，也无法提权执行脚本
- 色温调节**没有持久化**，重启后由框架恢复，需要自己加开机执行逻辑
- 只在这两款机型上验证过，其他设备请自行核对节点名
- 不提供 APK，不提供修改版系统镜像

## 免责

与 Barnes & Noble 无关。无保修、无官方支持，使用后果自负。第三方名称、商标与项目各自归其权利人所有。
