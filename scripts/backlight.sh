#!/bin/sh

brightness=$(xbacklight | xargs printf "%.*f\n" "$p")

if [ "$brightness" -gt 66 ]; then
    icon=" "
elif [ "$brightness" -gt 33 ]; then
    icon=""
else
    icon=""
fi

echo "$icon $brightness"
