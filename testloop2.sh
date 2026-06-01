#!/bin/bash
count=1
while [ $count -le 12 ]; do
	echo "count: $count"
	count=$((count + 1))
done
