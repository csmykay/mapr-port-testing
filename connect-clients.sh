#!/usr/bin/env bash

for port in $(cat ports)
do
	nc -w 1 16.0.8.108 ${port} 
	if [[ $? -eq 0 ]]
	then
		echo "Connected to ${port}"
	else
		echo "Unable to connect to ${port}"
		sleep 15
	fi
done
