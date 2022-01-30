#!/bin/sh

icon=":"
cupd=$(checkupdates | wc -l)

if [ "$cupd" = 0 ]; then
		printf ""
else
		printf "%s %s\n" "$icon" "$cupd" "$SEP2"
fi
