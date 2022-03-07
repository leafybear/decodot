#!/bin/sh

# terminate already running instances
killall -q dunst

# wait until the processes have been shut down
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done

# Launch
# run Dunst by combining it's config file and theme file
cat ~/.config/dunst/dunstrc ~/.theme/dunst.ini ~/.config/dunst/shortcuts.ini | dunst -conf - > /dev/null 2>&1 & disown

echo "Dunst launched..."
