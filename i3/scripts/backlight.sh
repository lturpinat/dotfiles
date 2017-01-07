#!/bin/bash

# Script for managing backlight in Asus g75vx

if [ -z $1 ] ; then
    echo "Syntax : $0 up|down|min|max|[0-3] "
    exit 1
fi

function set_backlight {
    echo $1 > /sys/devices/platform/asus-nb-wmi/leds/asus\:\:kbd_backlight/brightness
}

actual_brightness=$(cat /sys/devices/platform/asus-nb-wmi/leds/asus::kbd_backlight/brightness)
max_brightness=$(cat /sys/devices/platform/asus-nb-wmi/leds/asus::kbd_backlight/max_brightness)

if [ $1 == "up" ] ; then
    if [ $actual_brightness -lt $max_brightness ] ; then
        set_backlight $(($actual_brightness + 1))
    fi
elif [ $1 == "down" ] ; then
    if [ $actual_brightness -gt 0 ] ; then
        set_backlight $(($actual_brightness - 1))
    fi
elif [ $1 == "min" ] ; then
    set_backlight 0
elif [ $1 == "max" ] ; then
    set_backlight 3
elif [[ ( $1 -ge 0 ) && ( $1 -le $max_brightness ) ]] ; then
    set_backlight $1
fi
