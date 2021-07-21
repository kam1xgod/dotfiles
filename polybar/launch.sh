#!/usr/bin/env sh

# Terminate already running bar instance
killall -q polybar

# Wait until the proccess have been shutdown
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar --reload nav_bar &
polybar --reload func_bar &
polybar --reload tray_bar &

echo "Bars launched..."
