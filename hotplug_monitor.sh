#! /bin/bash

export DISPLAY=:0
export XAUTHORITY=/home/sergiy/.Xauthority

name=HDMI1
status=$(cat /sys/class/drm/card0-HDMI-A-1/status)

function msg() {
i3-msg "exec notify-send '$1'"
}

msg "$name [$status]"
if [ $status == "disconnected" ]; then
	xrandr --output $name --off
elif [ $status == "connected" ]; then 
	xrandr --output eDP1 --auto --output $name --auto --right-of eDP1
fi
