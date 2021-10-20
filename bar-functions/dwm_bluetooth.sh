#!/bin/bash
dwm_bluetooth () {
		xm3=$(bluetoothctl info CC:98:8B:C1:5C:78 | sed -n '9p')
		redmi=$(bluetoothctl info 1C:52:16:D1:A1:9B | sed -n '9p')
		if [ "$xm3" = "	Connected: yes" ]; then
						printf " XM3"
		elif [ "$redmi" = "	Connected: yes" ]; then
						printf " redmi"
		else	
						printf ""
		fi

		printf "%s\n" "$SEP2"
}

dwm_bluetooth
