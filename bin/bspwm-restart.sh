#!/bin/sh

bspc wm --dump-state > "$BSPWM_STATE"
pkill -x polybar
bspc quit 0