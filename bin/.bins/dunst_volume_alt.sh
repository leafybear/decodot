#!/bin/bash

if [ "$1" == "low" ]
then
	amixer -q set Master 3%- unmute
	ICON="/usr/share/icons/Adwaita/16x16/status/audio-volume-low.png"
	TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f6 | sed 's/\(\[\|\]\)//g')
elif [ "$1" == "high" ]
then
	amixer -q set Master 3%+ unmute
	ICON="/usr/share/icons/Adwaita/16x16/status/audio-volume-high.png"
	TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f6 | sed 's/\(\[\|\]\)//g')
elif [ "$1" == "mute" ]
then
	amixer -q set Master toggle
	ICON="/usr/share/icons/Adwaita/16x16/status/audio-volume-muted.png"
	TEXT=$(amixer sget Master | tail -1 | cut -d' ' -f8 | sed 's/\(\[\|\]\)//g')
else
	echo "Usage volume [low | high | mute]"
fi

dunstify -p -i $ICON "Volume: $TEXT"