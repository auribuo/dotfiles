#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [[ $(xrandr -q | grep "HDMI-1-0 connected") ]]; then
    polybar wm-lg-top & polybar wm-lg-bl & polybar wm-lg-bc & polybar wm-lg-br & polybar wm-sm-top
else
    polybar nm-sm-top & polybar nm-sm-bl & polybar nm-sm-bc & polybar nm-sm-br
fi