#!/bin/sh

if [ ! -e /data/fcount ]; then
	echo 0 > /data/fcount
fi

count=$(cat /data/fcount)
count=$(expr ${count} + 1)
echo "${count}" > /data/fcount
echo "Boot count $(cat "/data/fcount")"

while true; do sleep 10; done
