#!/usr/bin/env bash


for port in $(cat ports)
do
	# Start servers on each port
	nohup nc -l -p ${port} -k -c 'xargs -n1 echo' || echo "unablle to start on ${port}" &
done
