#!/bin/sh

PATH_AC="/sys/class/power_supply/ACAD"
PATH_BATTERY_1="/sys/class/power_supply/BAT1"

ac=0
battery_level_1=0
battery_max_1=0

if [ -f "$PATH_AC/online" ]; then
    ac=$(cat "$PATH_AC/online")
fi

if [ -f "$PATH_BATTERY_1/charge_now" ]; then
    battery_level_1=$(cat "$PATH_BATTERY_1/charge_now")
fi

if [ -f "$PATH_BATTERY_1/charge_full" ]; then
    battery_max_1=$(cat "$PATH_BATTERY_1/charge_full")
fi

battery_level=$(("$battery_level_1"))
battery_max=$(("$battery_max_1"))

battery_percent=$(("$battery_level * 100"))
battery_percent=$(("$battery_percent / $battery_max"))

if [ "$ac" -eq 1 ]; then
    icon=" UwU "

    if [ "$battery_percent" -gt 97 ]; then
        echo "$icon $battery_percent %"
    else
        echo "$icon $battery_percent %"
    fi
else
    if [ "$battery_percent" -gt 97 ]; then
        icon=" ~0~ "
    elif [ "$battery_percent" -lt 15 ]; then
        icon="BOSS, AM TIRED"
    elif [ "$battery_percent" -lt 10 ]; then
        icon="OI OI OI OI OI OI OI OI"
        sleep 2
        poweroff
    else
        icon=""
    fi

    echo "$icon $battery_percent %"
fi
