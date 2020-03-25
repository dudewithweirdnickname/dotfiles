#!/bin/sh
bat=$(cat /sys/class/power_supply/BAT0/capacity)
if [ "$bat" -le "19" ]; then
	shutdown -h now
fi
