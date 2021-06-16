#!/bin/bash

alsadev=${1}

[ -z ${1} ] && echo 'argument required'

volume=$(amixer get ${alsadev} | awk -F'[][]' 'END{ print $2 }' | sed 's/%//g')

if [ ${volume} -gt 60 ]; then
    icon="墳"
elif [ ${volume} -gt 20 ]; then
    icon="奔"
elif [ ${volume} -gt 0 ]; then
    icon="奄"
elif [ ${volume} -eq 0 ]; then
    icon="婢"
fi

echo "${icon}: ${volume}%"
