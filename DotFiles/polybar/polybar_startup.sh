#!/bin/bash
killall -q polybar
while pgrep -u $UID -x polybar > /dev/null
do
       	sleep 1
done

echo "---" | tee -a /tmp/polybar.log
polybar Left &
polybar Middle &
polybar Right &
echo "Polybar launched"
