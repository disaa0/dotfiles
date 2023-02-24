#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown

# Detect second monitor and wait 5 seconds

#mode="$(autorandr --detected)"

#if [[ $mode =~ "docked" ]]; then
#	echo "second monitor detected"
#fi
polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
