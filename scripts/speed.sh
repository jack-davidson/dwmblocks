#!/bin/sh
# Get internet speed. This script is SLOW due to speedtest-cli
# being a quite slow program due to connecting to several servers.
# Depends on speedtest-cli.

OUTPUT=$(speedtest-cli)

upload=$(echo $OUTPUT | grep -oP 'Upload: \K[0-9]+')
download=$(echo $OUTPUT | grep -oP 'Download: \K[0-9]+')

echo ${download}mbps/${upload}mbps
