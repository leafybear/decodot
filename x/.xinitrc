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
#~/.bins/dropbox start

# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd

#### window manager
# I3 with logging of output
exec i3 -V >> ~/.i3-log-$(date + '%F-%k-%M-%S') 2>&1
