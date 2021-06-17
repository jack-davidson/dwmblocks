#!/bin/sh

hour=$(date "+%I")

if [ ${hour} -eq 1 ]; then
    icon=""
elif [ ${hour} -eq 2 ]; then
    icon=""
elif [ ${hour} -eq 3 ]; then
    icon=""
elif [ ${hour} -eq 4 ]; then
    icon=""
elif [ ${hour} -eq 5 ]; then
    icon=""
elif [ ${hour} -eq 6 ]; then
    icon=""
elif [ ${hour} -eq 7 ]; then
    icon=""
elif [ ${hour} -eq 8 ]; then
    icon=""
elif [ ${hour} -eq 9 ]; then
    icon=""
elif [ ${hour} -eq 10 ]; then
    icon=""
elif [ ${hour} -eq 11 ]; then
    icon=""
elif [ ${hour} -eq 12 ]; then
    icon=""
fi

echo "${icon}: $(date '+%a %b %d %I:%M %p ')"
