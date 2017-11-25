#!/bin/sh
echo "{\"version\":1}"
echo "[[] ,"
BG='#111111'
FONT='-*-ProFont-*-*-*-*-11-*-*-*-*-*-*-*'
conky -c ~/.conkyrc | dzen2 -fg $FG -bg $BG -fn $FONT -x 500 -y 2 -w 3000 -ta r -xs 1
