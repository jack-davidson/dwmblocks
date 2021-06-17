#!/bin/sh
title=$(mpc -f "%title%" | sed 1q)
artist=$(mpc -f "%artist%" | sed 1q)
time=$(mpc | sed '2!d' | cut -d' ' -f6)
echo "ﱘ  ${artist} - ${title} (${time})"
