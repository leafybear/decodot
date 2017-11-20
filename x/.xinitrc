#### environment variables
source $HOME/.colors/dmenu/rebel
export DMENU_FONT="Luculent-14"

#### x settings and niceties
xrdb $HOME/.Xresources
xsetroot -cursor_name left_ptr
xsetroot -name $HOSTNAME
sh ~/.fehbg &
compton --config $HOME/.config/compton.conf -cCb &
#xscreensaver -no-splash &

## set starting backlight and volume values
xbacklight -set 50
amixer -q set Master 60 unmute
/usr/bin/xcalib -d :0 $HOME/.icc/6000.icm

#### window manager
# I3 with logging of output
exec i3 -V >> ~/.i3-log-$(date + '%F-%k-%M-%S') 2>&1
