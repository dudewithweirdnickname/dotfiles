#!/usr/bin/sh
# based on luke's battery script

capacity=$(cat /sys/class/power_supply/BAT0/capacity) 
status=$(cat /sys/class/power_supply/BAT0/status)

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
# if [[ "$status" == 'Disharging' && "$capacity" -le '25' && "$capacity" -ge '10' ]]; then
#	notify-send 'BAT0 GOING LOW' 'please apply charger at 20%' -u=critical
# fi

echo "$capacity% $status" | sed -e 's/Charging/CHA/;s/Discharging/DIS/;s/Unknown/FUL/;s/Not charging/NOT/' 
