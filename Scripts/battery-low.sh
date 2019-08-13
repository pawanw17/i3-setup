#!/bin/bash
while true
do
icon="$HOME/Scripts/low-batt.png"
img="$HOME/Scripts/cache/back.png"

    battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
    if [ $battery_level -le 15 ]; then
	if ! on_ac_power; then
		scrot $img
		convert $img $icon -gravity center -composite $img	    
		feh -F $img 
    	fi
    fi

    sleep 100 # 100 seconds
done

