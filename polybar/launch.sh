# #!/usr/bin/env sh
#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar top >> /tmp/polybar1.log 2>&1 & disown
# you can launch any bars that are defined

# Launch a second bar if I have another display
secondDisplayIsAvailable=$(xrandr --query | grep 'HDMI-A-2')
if [[ $secondDisplayIsAvailable = *connected* ]]; then
	polybar second-screen >> /tmp/polybar2.log 2>&1 & disown
fi

echo "Bars launched..."
