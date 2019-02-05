#!/bin/bash

# Terminate already running polybar
killall -q polybar

# Wait until the processes have been shutdown
wn
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar example &

echo "Polybar launched..."
