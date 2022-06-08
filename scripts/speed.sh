#!/bin/sh

OUTPUT=$(speedtest-cli)

upload=$(echo $OUTPUT | grep -oP 'Upload: \K[0-9]+')
download=$(echo $OUTPUT | grep -oP 'Download: \K[0-9]+')

echo ${download}mbps/${upload}mbps
