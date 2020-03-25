#!/bin/sh
# script inspired by brodie robertson's bookmenu 
# and derek tailor's dmenu-edit-config

declare action=("open
seach
bookmark
youtube
quit")


web=(~/bookmarks/web-url)
rss=(~/bookmarks/rss-url)
link="$1"
selected=$(echo "${action[@]}" | dmenu -i -p 'Select action: ')

case "$selected" in

quit)
	exit 1 ;;

bookmark)
	firefox $(cat $web | dmenu -i -l 10 | awk '{print $1 " " $2}' | awk '{print $2}') ;;

seach)
	firefox  $( 'https://duckduckgo.com/?q=" $link "&ia=web' |  dmenu -i -p 'Duckduckgo search: ' | sed 's/\ /\+/g') ;;
	
youtube)
	freetube-bin $(cat $rss | dmenu -i -l 10 | awk '{print $2 " " $1}' | awk '{print $2}') ;;
	#cut -30 41-

esac
