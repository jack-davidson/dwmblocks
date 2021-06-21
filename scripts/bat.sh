#!/bin/sh

# `touch /tmp/dwmblocks:bat:show_levels` to show individual battery levels
# `rm /tmp/dwmblocks:bat:show_levels` to show average battery levels

BAT0=$(cat /sys/class/power_supply/BAT0/capacity)
BAT1=$(cat /sys/class/power_supply/BAT1/capacity)

avg=$(((${BAT0} + ${BAT1}) / 2))
status=""

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

if [ -e "/tmp/dwmblocks:bat:show_levels" ]; then
    bat0_icon=$(get_level_icon ${BAT0} "" "" "" "" "")
    bat1_icon=$(get_level_icon ${BAT1} "" "" "" "" "")
    status="${bat0_icon} ${BAT0}% ${bat1_icon} ${BAT1}%"
fi

icon=$(get_level_icon ${avg} "  " "  " "  " "  " "  ")

[ -z "${status}" ] && status="${icon}  ${avg}%"

echo "${status}"
