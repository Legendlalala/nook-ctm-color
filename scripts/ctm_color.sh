#!/system/bin/sh
# NOOK 前光色温映射脚本（设备端，由控制程序通过 su 调用）
# 读取 persist.sys.ctm.color (0-100, 0=最暖 100=最冷)，写 backlight 双通道
#
# 节点自动探测：不同机型 backlight 名字可能不同
#   暖光通道优先找 *leda*，冷光通道优先找 *ledb*
#   找不到就退化为只写主通道（色温不可用）

V=$(getprop persist.sys.ctm.color)
[ -z "$V" ] && exit 0

# ---- 探测节点 ----
BL=/sys/class/backlight
LEDA=""
LEDB=""
for d in $BL/*; do
    n=$(basename "$d")
    case "$n" in
        *leda*) LEDA="$d/brightness" ;;
        *ledb*) LEDB="$d/brightness" ;;
    esac
done
# 有些机型没有 leda/ledb，只有一个主通道
if [ -z "$LEDA" ] && [ -z "$LEDB" ]; then
    for d in $BL/*; do
        n=$(basename "$d")
        case "$n" in
            *led*|*backlight*|*bl*) LEDA="$d/brightness"; break ;;
        esac
    done
fi

# ---- 映射表（GL4 实机采样，10 档）----
case "$V" in
  100) L=0;   M=254 ;;
  90)  L=173; M=250 ;;
  80)  L=198; M=246 ;;
  70)  L=212; M=241 ;;
  60)  L=222; M=236 ;;
  50)  L=230; M=229 ;;
  40)  L=236; M=221 ;;
  30)  L=242; M=211 ;;
  20)  L=247; M=196 ;;
  10)  L=251; M=172 ;;
  0)   L=255; M=0   ;;
  *)   exit 0 ;;
esac

# ---- 写入 ----
[ -n "$LEDA" ] && echo "$L" > "$LEDA" 2>/dev/null
[ -n "$LEDB" ] && echo "$M" > "$LEDB" 2>/dev/null
exit 0
