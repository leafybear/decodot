#!/bin/bash

source $HOME/.config/lemonbar/themes/greengray
fonts="Fantasque Sans Mono-12"
# <width>x<height>+<xoffset>+<yoffset>
geometry="x30"

fifo=$HOME/.lemonbarFIFO
[ -e "$fifo" ] && rm "$fifo"
mkfifo "$fifo"

## $clock, $ram, $disk, $cputemps, $volume
## $wm_infos
bspc control --subscribe > "$fifo" &
$HOME/.config/lemonbar/better/ram.sh > "$fifo" &
$HOME/.config/lemonbar/better/disk.sh > "$fifo" &
$HOME/.config/lemonbar/better/clock.sh > "$fifo" &
## labels for the infos
c_=""
r_="%{F$color_ic}mem%{F-} "
d_="%{F$color_ic}hd%{F-} "
## info seperator
sep="%{F$color_sep}/%{F-}"

parseModules() {
    while read -r line; do
        source parser.sh
        printf "%s\n" "%{l}  $c_$clock $sep $r_$ram $sep $d_$disk"
    done
}

# modules &
# | while read line; do eval "$line"; done &
parseModules < $fifo | lemonbar -p -u 2 -f "$fonts" -B "$color_bg" -F "$color_fg" -g "$geometry"

wait
