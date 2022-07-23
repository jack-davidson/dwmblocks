#!/bin/sh
icon=" "
for status in $(rfkill -no SOFT); do
    [ "$status" = "blocked" ] && icon=" "
done

echo "$icon"
