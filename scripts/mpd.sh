#!/bin/sh

current=$(mpc current)
[ -z "${current}" ] && current="idle"
time="($(mpc | sed "2!d" | tr -s ' ' | cut -d' ' -f3))"
[ "${time}" = "()" ] && time=""
echo "ﱘ  ${current} ${time}"
