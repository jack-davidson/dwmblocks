#!/bin/sh
interface="$(iwctl station list | grep ".*connected" | tr -s ' ' | cut -d' ' -f2)"
echo "泌 ${interface}: \"$(iwctl station ${interface} show | sed "7!d" | tr -s ' ' | sed "s/[ \t]*$//" | cut -d' ' -f4-)\""
