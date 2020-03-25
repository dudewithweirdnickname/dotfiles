#!/bin/sh
# based on luke's battery script

capacity=$(cat /sys/class/power_supply/BAT1/capacity) 
status=$(cat /sys/class/power_supply/BAT1/status)

# this one works just ok, you need just to add "$icon"
#
# if [ "$capacity" -ge 75 ]; then
#	icon=" "
# elif [ "$capacity" -ge 50 ]; then
#	icon=" "
# elif [ "$capacity" -ge 25 ]; then
#	icon=" "
# elif [ "$capacity" -ge 10 ]; then
#	icon=" "
# else icon=" "
# fi

# doesn't work for some reason, maybe battery drains too fast
#
# if [ "$status" == 'Disharging' && "$capacity" -le '21' && "$capacity" -ge '20' ]; then
#	 $(notify-send -u critical -t 25000 'BAT1 GOING LOW' 'please apply charger at 20%')
# fi

echo "$capacity% $status" | sed -e 's/Charging/CHA/;s/Discharging/DIS/;s/Unknown/FUL/;s/Not charging/NOT/' 
