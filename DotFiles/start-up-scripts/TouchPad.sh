#!/bin/bash
#exit
echo $touchPadId
while true
do
	MouseId=$(xinput | grep -i Razer |cut -d "=" -f 2| cut -d "[" -f 1)
	touchPadId=$(xinput| grep -i touchpad | cut -d "=" -f 2| cut -d "[" -f 1)
	echo $MouseId
	if [ ! -z "$MouseId" ]
	then
		xinput disable $touchPadId
	else 
		xinput enable $touchPadId
	fi
	sleep 5s
done
	
