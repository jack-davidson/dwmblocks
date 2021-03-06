#!/bin/sh
# Get current song/time with mpd.
# Depends on mpd and mpc.

icon="ﱘ"
status=$(mpc current)
time=$(mpc | sed "2!d" | tr -s ' ' | cut -d' ' -f3)

if [ -z "${status}" ]; then
    icon="ﱙ"
    status="${icon}"
fi

[ -z "${time}" ] || status="${icon} ${status} (${time})"

echo "${status}"
