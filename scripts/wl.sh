#!/bin/sh

interface="$(iwctl station list | grep ".*connected" |
    tr -s ' ' | cut -d' ' -f2)"


ssid="$(iwctl station ${interface} show | sed '7!d' |
    tr -s ' ' | sed "s/[ \t]*$//" | cut -d' ' -f4-)"

[ -z "${interface}" ] && echo "泌 n/a" && exit
[ -z "${ssid}" ] && echo "泌 ${interface}: disconnected"

echo "泌 ${interface}: \"${ssid}\""
