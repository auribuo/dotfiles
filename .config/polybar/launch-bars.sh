#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [[ $(xrandr -q | grep "HDMI-1-0 connected") ]]; then
    polybar -l warning wm-lg-top & polybar -l warning wm-lg-bottom & polybar -l warning wm-sm-top &
else
    polybar -l warning nm-sm-top & polybar -l warning nm-sm-bottom &
fi