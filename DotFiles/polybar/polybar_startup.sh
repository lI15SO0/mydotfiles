#!/bin/bash

killall -q polybar
while pgrep -u $UID -x polybar > /dev/null
do
       	sleep 0.1
done

echo "----------------------------------------" > /tmp/polybar.log
polybar Left >> /tmp/polybar.log 2>> /tmp/polybar.log &
polybar Middle >> /tmp/polybar.log 2>> /tmp/polybar.log &
polybar Right >> /tmp/polybar.log 2>> /tmp/polybar.log &
echo "Polybar launched"
