#!/bin/sh

BAT0=$(cat /sys/class/power_supply/BAT0/capacity)
BAT1=$(cat /sys/class/power_supply/BAT1/capacity)

level=$(((${BAT0} + ${BAT1}) / 2))

if [ ${level} -gt 75 ]; then
    icon=" "
elif [ ${level} -gt 50 ]; then
    icon=" "
elif [ ${level} -gt 25 ]; then
    icon=" "
elif [ ${level} -gt 0 ]; then
    icon=" "
fi

echo "${icon}: ${level}%"
