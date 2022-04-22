#!/bin/bash


while [ ! $device ]
do
device=$(xsetwacom --list devices |grep -i "STYLUS" | cut -d ':' -f 2 |cut -d 't' -f 1)
echo $device
sleep 5s
done

xsetwacom --set $device Area 0 675 21600 12825
xsetwacom --set $device Rotate half
