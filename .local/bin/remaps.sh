#!/bin/sh
# stolen from luke, still have to get how does xcape work 
# also got this from tanyuan's 
xset r rate 300 50
setxkbmap -layout us,ua,ru -option grp:alt_shift_toggle -option ctrl:nocaps
killall xcape 2>/dev/null ; xcape -e 'Control_L=Escape'
