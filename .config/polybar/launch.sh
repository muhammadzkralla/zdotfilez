#!/usr/bin/env bash

# Kill all running polybar instances
killall -q polybar

# Wait until they are actually terminated
while pgrep -x polybar >/dev/null; do sleep 0.5; done

# Launch Polybar with your config
polybar example --config=~/.config/polybar/config.ini &
