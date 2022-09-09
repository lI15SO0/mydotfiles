#!/bin/sh
ps -fe | grep syncthing | grep -v grep
if [ $? -ne 0 ]
then
	echo running...
syncthing &
else
	echo another one running...
fi
