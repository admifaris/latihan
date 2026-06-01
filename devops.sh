#!/bin/bash

name="highjump"
disk=$(df -h / | awk 'NR==2 {print $5}')
memory=$(free -h | awk 'NR==2 {print $3}')

echo "------------"
echo "server report"
echo "------------"
echo "Admin : $name"
echo "disk used: $disk"
echo "memory used: $memory"

for service in docker ssh; do
	if systemctl is-active --quiet $service; then
		echo "$service is RUNNING"
	else
		echo "$service is STOPPED"
fi
done
