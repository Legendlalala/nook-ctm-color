# NOOK Contrast Threshold Modifier (Android 8.1 Adaptive Edition)

[中文说明](#中文说明) | [English Description](#english-description)

---

## 中文说明

本项目是基于 XDA 著名开发者 **RyogoNA (Ryogo-X)** 早期为老款 NOOK 设备（Android 4.4）开发的对比度调节工具（`com.example.ctm`）进行的**高版本 Android 系统兼容性修改与适配版本**。

原本该工具作为系统级应用内置于特定的定制固件中。随着 NOOK Glowlight 4/4e 等新一代设备升级至 **Android 8.1** 系统，由于更严苛的 SELinux 策略、系统属性写入限制以及 API断层，原版工具已无法在新设备上直接运行。

经过本次 Smali 逆向重构与适配，现已成功将其移植到 Android 8.1 平台，使其成为一个**只需 Root 权限即可即装即用的通用工具**。

### 🛠️ 适配与修改内容
* **高版本 Android 兼容性适配**：彻底重构了底层的系统属性写入逻辑，使其完美绕过 Android 8.1 的安全限制，成功在 NOOK 4系列等新设备上跑通。
* **免系统级安装（Root 运行支持）**：将原版必须置于 `/system/app/` 分区的限制，改写为通过 `su` 提权执行。现在只需普通安装并授予 **Root 权限**（如通过 Magisk）即可完美运行。
* **交互体验优化**：微调了白阈值与对比度滑块（SeekBar）的数值同步逻辑，使其在 Android 8.1 下的响应速度和刷新体验更加丝滑。

---

### 📥 安装与使用

#### 方法一：普通安装（推荐，方便快捷）
1. 下载并在你的 NOOK (Android 8.1+) 设备上安装编译好的 APK。
2. 打开应用，当系统弹出权限请求时，**务必授予其 Root 权限**。
3. （可选）如果在某些第三方启动器下无法唤醒，请在系统设置中手动开启“允许修改系统设置”和“显示在其他应用上层”权限。

#### 方法二：高级玩法（使用电脑 ADB 注入系统分区，免除 Root 弹窗）
如果你希望该工具开机自启、更稳定地运行，且免去 Magisk 手动授权的麻烦，可以利用 Root 权限将其直接注入系统分区：

1. 连接电脑并打开终端，获取系统最高权限并挂载分区：
   ```cmd
   adb shell
   su
   # 挂载系统分区为可读写
   mount -o remount,rw /system
   # 创建专属的系统应用文件夹
   mkdir -p /system/app/ctm
   exit
   exit
   ```

2. 将编译签名好的 APK 推送至该目录：
```cmd
adb push ctm_signed.apk /system/app/ctm/ctm.apk

```

3. 修正系统及文件权限（**极其重要**，否则系统开机后会静默忽略该应用）：
```cmd
adb shell
su
chmod 755 /system/app/ctm
chmod 644 /system/app/ctm/ctm.apk
reboot

```


#### 方法三：设备端独立玩法（使用 MT管理器 复制并授权，免电脑）

如果你不想连接电脑，可以直接在 NOOK 上利用 **MT管理器**（需授予 MT管理器 Root 权限）将应用塞入系统层：

1. 打开 MT管理器，左边窗口进入系统根目录：`/system/app/`。
2. 在 `/system/app/` 目录下长按或点击菜单，新建一个名为 **`ctm`** 的文件夹。
3. **修改文件夹权限**：长按新建的 `ctm` 文件夹 -> 选择 **属性** -> 找到权限（Permissions）更改为 **`755`**（即：所有者读写执行、组和其他人可读可执行：`rwxr-xr-x`）。
4. MT管理器右边窗口找到你下载好的 `ctm_signed.apk`，长按选择**复制**，将其塞入左边的 `/system/app/ctm/` 目录中，并重命名为 **`ctm.apk`**。
5. **修改 APK 文件权限**：在左边长按刚刚复制进去的 `ctm.apk` -> 选择 **属性** -> 找到权限更改为 **`644`**（即：所有者读写、组和其他人只读：`rw-r--r--`）。
6. 重启 NOOK 设备，大功告成！

---

### 📜 鸣谢与免责声明

* **特别致谢**：感谢原作者 **RyogoNA (Ryogo-X)** 的杰出原作，为 NOOK 设备的墨水屏生态做出了巨大贡献。
* **版权声明**：本软件的原始版权归原作者所有。本项目完全为个人兴趣发起的公益性维护与系统适配，**严禁任何形式的商业化及收费行为**。
* 如原作者不希望此修改版公开，请随时提交 Issue 或联系我，我将立即下架处理。

---

## English Description

This project is a **modern compatibility and adaptation layer** for the contrast adjustment tool (`com.example.ctm`), originally developed by the renowned XDA developer **RyogoNA (Ryogo-X)** for older NOOK devices running Android 4.4.

The original utility was tightly coupled as a system app within legacy custom firmwares. With newer generation devices like the NOOK Glowlight 4/4e upgrading to **Android 8.1**, stricter SELinux policies, system property writing restrictions, and broken APIs caused the original app to completely fail or go blind.

Through Smali reverse engineering and adaptation, this version resurrects the functionality on Android 8.1, turning it into a **standalone utility that works seamlessly with just Root privileges**.

### 🛠️ Adaptation & Changes

* **High-Version Android Compatibility**: Reconfigured the underlying system property invocation to bypass the stringent constraints of Android 8.1, allowing it to interface properly with modern e-ink display drivers.
* **No System Partition Requirement**: Migrated the execution model from a restricted System App to a generic app driven by `su` elevation. It can now be installed normally as long as **Root permission** (via Magisk, etc.) is granted.
* **UI & Interaction Optimizations**: Refined the value-synchronization logic of the Threshold and Contrast SeekBars to enhance responsiveness and visual feedback on Android 8.1 devices.

---

### 📥 Installation & Usage

#### Method 1: Standard Installation (Recommended & Fast)

1. Download and install the pre-compiled APK on your rooted NOOK (Android 8.1+) device.
2. Launch the app and **make sure to grant Root Access** when prompted by your superuser manager.
3. (Optional) If it encounters any activation hiccups under third-party launchers, manually toggle "Modify System Settings" and "Display over other apps" in the Android app settings.

#### Method 2: Advanced (Install as a System App via PC ADB to Bypass Root Popups)

For power users who want this utility to run natively as part of the system partition (which can bypass manual Magisk prompts entirely):

1. Connect your device and elevate your terminal privileges:
```cmd
adb shell
su
# Remount system partition as read-write
mount -o remount,rw /system
# Create a dedicated system app directory
mkdir -p /system/app/ctm
exit
exit

```


2. Push the signed APK into the newly created folder:
```cmd
adb push ctm_signed.apk /system/app/ctm/ctm.apk

```


3. Correct the folder and file permissions (**Crucial step**, otherwise Android will blindly ignore the APK upon booting):
```cmd
adb shell
su
chmod 755 /system/app/ctm
chmod 644 /system/app/ctm/ctm.apk
reboot

```



#### Method 3: Device-Only Method (Via MT Manager, No PC Required)

If you prefer a PC-free setup, you can use **MT Manager** directly on your rooted NOOK (make sure MT Manager has root access):

1. Open MT Manager. In the left panel, navigate to the system directory: `/system/app/`.
2. Create a new folder named **`ctm`** inside `/system/app/`.
3. **Modify Folder Permissions**: Long-press the newly created `ctm` folder -> select **Properties** -> change its permission to **`755`** (`rwxr-xr-x`).
4. In the right panel, locate your downloaded `ctm_signed.apk`, long-press it, select **Copy** to transfer it into `/system/app/ctm/` on the left panel, and rename it to **`ctm.apk`**.
5. **Modify APK Permissions**: Long-press the copied `ctm.apk` in the left panel -> select **Properties** -> change its permission to **`644`** (`rw-r--r--`).
6. Reboot your NOOK device, and you are good to go!

---

### 📜 Credits & Disclaimer

* **Special Thanks**: Heartfelt credits to the original author **RyogoNA (Ryogo-X)** for their incredible contributions to the NOOK e-ink developer ecosystem.
* **Disclaimer**: The original copyright belongs to the initial author. This repository is dedicated solely to non-profit personal maintenance and adaptation. **Any form of commercialization or paid redistribution is strictly prohibited.**
* If the original author prefers this modified version not to be publicly hosted, please open an Issue or contact me directly, and it will be taken down immediately.

```
