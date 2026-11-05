#!/usr/bin/env bash
# NOOK GL4 前光控制：亮度 + 冷暖
#
# 用法:
#   bash frontlight.sh 60 3          # 亮度 60，色温 3（0=最暖 10=最冷）
#   bash frontlight.sh --warm        # 最暖
#   bash frontlight.sh --cool        # 最冷
#   bash frontlight.sh --neutral     # 中间
#   bash frontlight.sh --show        # 只看当前状态
#
# 原理:
#   系统改亮度会重写冷光通道，但不碰暖光通道。
#   所以顺序必须是「先设亮度 → 再写两个通道」，否则色温会被冲掉。
#
# 映射表来自实机采样（GL4 8.1.1.110，逐档拖动设备自带滑块后读取底层节点）。

set -u
export MSYS_NO_PATHCONV=1
export MSYS2_ARG_CONV_EXCL="*"

ADB="${ADB:-adb}"
BL=/sys/class/backlight

if ! command -v "$ADB" >/dev/null 2>&1; then
  echo "找不到 adb，请设置 ADB=/path/to/adb" >&2
  exit 1
fi

# ---- 探测节点，不写死名字 ----
NODES=$("$ADB" shell "ls $BL" 2>/dev/null | tr -d '\r')
if [ -z "$NODES" ]; then
  echo "读不到 $BL，确认设备已连接且 adb 可用" >&2
  exit 1
fi

LEDA="${LEDA:-}"
LEDB="${LEDB:-}"
MAIN="${MAIN:-}"
for n in $NODES; do
  case "$n" in
    *leda*) LEDA="$BL/$n/brightness" ;;
    *ledb*) LEDB="$BL/$n/brightness" ;;
    *led*|*backlight*|*bl*)
      if [ -z "$MAIN" ]; then MAIN="$BL/$n/brightness"; fi ;;
  esac
done

# color -> "leda ledb"
lookup() {
  case "$1" in
    10) echo "0 254"   ;;
     9) echo "173 250" ;;
     8) echo "198 246" ;;
     7) echo "212 241" ;;
     6) echo "222 236" ;;
     5) echo "230 229" ;;
     4) echo "236 221" ;;
     3) echo "242 211" ;;
     2) echo "247 196" ;;
     1) echo "251 172" ;;
     0) echo "255 0"   ;;
    *) echo "" ;;
  esac
}

show() {
  echo "--- 当前状态 ---"
  echo -n "screen_brightness = "
  "$ADB" shell "settings get system screen_brightness" | tr -d '\r'
  echo
  for node in "$MAIN" "$LEDA" "$LEDB"; do
    [ -z "$node" ] && continue
    v=$("$ADB" shell "su -c 'cat $node'" 2>/dev/null | tr -d '\r')
    echo "$(basename "$(dirname "$node")") = ${v:-读不到}"
  done
  echo "节点: main=${MAIN:-无} leda=${LEDA:-无} ledb=${LEDB:-无}"
}

case "${1:-}" in
  --show) show; exit 0 ;;
  --warm)    BRIGHT=$("$ADB" shell "settings get system screen_brightness" | tr -d '\r'); COLOR=0 ;;
  --cool)    BRIGHT=$("$ADB" shell "settings get system screen_brightness" | tr -d '\r'); COLOR=10 ;;
  --neutral) BRIGHT=$("$ADB" shell "settings get system screen_brightness" | tr -d '\r'); COLOR=5 ;;
  "")
    echo "用法: bash frontlight.sh <亮度0-100> <色温0-10>"
    echo "      bash frontlight.sh --warm|--cool|--neutral|--show"
    exit 1 ;;
  *)
    BRIGHT="${1:-60}"; COLOR="${2:-5}" ;;
esac

VALS=$(lookup "$COLOR")
if [ -z "$VALS" ]; then echo "色温要在 0-10 之间"; exit 1; fi
LEDA_V=$(echo "$VALS" | awk '{print $1}')
LEDB_V=$(echo "$VALS" | awk '{print $2}')

# 1) 先设亮度（框架会写主通道与冷通道）
"$ADB" shell "settings put system screen_brightness $BRIGHT" >/dev/null 2>&1
sleep 1

# 2) 再写两个通道
if [ -n "$LEDA" ] && [ -n "$LEDB" ]; then
  "$ADB" shell "su -c 'echo $LEDA_V > $LEDA; echo $LEDB_V > $LEDB'" 2>&1
  echo "已设置: 亮度=$BRIGHT 色温=$COLOR (leda=$LEDA_V ledb=$LEDB_V)"
else
  echo "没找到冷暖双通道，只设了亮度（色温不可用）"
fi
show
