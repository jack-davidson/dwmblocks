#!/bin/sh
# Get memory used/total memory with icon.
echo "  $(free -h | awk '/^Mem/ { print $3"/"$2 }' | sed s/i//g)"
