#!/bin/sh
# Display (average) battery level(s) with icon
# Supports machines with multiple batteries.
# Depends on sysfs (builtin on most systems)

get_level_icon() {
    level=${1}
    full=${2}
    high=${3}
    medium=${4}
    low=${5}
    verylow=${6}
    if [ ${level} -eq 100 ]; then
        echo ${full}
    elif [ ${level} -gt 75 ]; then
        echo ${high}
    elif [ ${level} -gt 25 ]; then
        echo ${medium}
    elif [ ${level} -gt 0 ]; then
        echo ${low}
    elif [ ${level} -gt 0 ]; then
        echo ${verylow}
    fi
}

count=0 # battery count
sum=0 # sum of battery levels

for battery in /sys/class/power_supply/BAT*; do
    count=$((count+1))
    sum=$((sum+$(cat ${battery}/capacity)))
done

# average battery level
avg=$((sum/count))

icon=$(get_level_icon ${avg} "  " "  " "  " "  " "  ")
charging=$([ "$(cat /sys/class/power_supply/AC/online)" = "1" ] && echo "⚡ " || echo "")

echo "${charging}${icon}  ${avg}%"
