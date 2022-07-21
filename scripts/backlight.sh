#!/bin/sh
# Get X11 backlight with icon.
# Depends on xbacklight(1) for getting the display's backlight.

brightness=$(xbacklight | xargs printf "%.*f\n" "$p")

if [ "$brightness" -eq 100 ]; then
    icon=" "
elif [ "$brightness" -gt 80 ]; then
    icon=" "
elif [ "$brightness" -gt 40 ]; then
    icon=" "
elif [ "$brightness" -gt 20 ]; then
    icon=" "
else
    icon=" "
fi

echo "$icon$brightness%"
