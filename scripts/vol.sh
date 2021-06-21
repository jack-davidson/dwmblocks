#!/bin/sh

alsadev=${1}

[ -z ${1} ] && echo 'argument required'

output=$(amixer get ${alsadev})

volume=$(echo "${output}" | awk -F'[][]' 'END{ print $2 }' | sed 's/%//g')

if [ "$(echo "${output}" | sed '5!d' | tr -s ' ' | cut -d' ' -f7)" = '[off]' ]; then
    icon="婢"
elif [ ${volume} -gt 50 ]; then
    icon="墳"
elif [ ${volume} -gt 20 ]; then
    icon="奔"
elif [ ${volume} -gt 0 ]; then
    icon="奄"
elif [ ${volume} -eq 0 ]; then
    icon="婢"
fi

echo "${icon} ${volume}%"
