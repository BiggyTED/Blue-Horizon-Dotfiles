#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload topBar &
done

#echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#polybar topBar 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Polybar launched"
