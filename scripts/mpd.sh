#!/bin/sh
title=$(mpc -f "%title%" | sed 1q)
artist=$(mpc -f "%artist%" | sed 1q)
time=$(mpc | sed "2!d" | tr -s ' ' | cut -d' ' -f3)
echo "ﱘ  ${artist} - ${title} (${time})"
