#!/bin/sh
xwallpaper --zoom $( ls -tr -d -1 "/home/hour/pics/wallpapers/"* | dmenu -i -l $(ls -tr -d -1 "/home/hour/pics/wallpapers/"* | wc -w) )
