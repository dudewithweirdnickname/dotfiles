#!/usr/bin/sh
#
#
muted=$(pactl list sinks | awk '/Mute/ { print $2; exit; }' | sed 's/no/VOL/g; s/yes/MUT/g')
volume=$(pactl list sinks | awk '/Volume/ { print $5; exit; }')
echo $muted $volume

