#!/bin/sh

# If I have a second display attached, configure it with Xrandr
# I want to scale the resolution since it is a 4k screen

secondDisplayIsAvailable=$(xrandr --query | grep 'HDMI-A-2')
if [[ $secondDisplayIsAvailable = *connected* ]]; then
	xrandr --output HDMI-A-2 --scale 0.75x0.75 --right-of DisplayPort-0
fi
