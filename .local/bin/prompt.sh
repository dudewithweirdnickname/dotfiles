#!/bin/sh
#
# A dmenu binary prompt script.
# Gives a dmenu prompt labeled with $1 to perform command $2.
# For example:
# `./prompt "Do you want to shutdown?" "shutdown -h now"`
#
# stole this one from luke, feeling no shame (lie)
#
#
[ "$(printf "No\\nYes" | dmenu -i -p "$1" -nb '#343434' -nf '#f9f9f9' -sb '#900000' -sf '#f9f9f9' )" = "Yes" ] && $2
