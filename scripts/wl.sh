#!/bin/sh

icon="說"

interface="$(iwctl station list | grep ".*connected" |
    tr -s ' ' | cut -d' ' -f2)"

ssid="$(iwctl station ${interface} show | sed '7!d' |
    tr -s ' ' | sed "s/[ \t]*$//" | cut -d' ' -f4-)"

if [ -z "${interface}" ]; then
    status="ﲁ "
elif [ -z "${ssid}" ]; then
    icon="ﲁ "
    status="${icon}${interface}: disconnected"
else
    status="${icon} ${interface}: <${ssid}>"
fi

echo "${status}"
