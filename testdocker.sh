#!/bin/bash
mkdir ~p /home/highjump/tantangan
echo "name: highjump" > /home/highjump/tantangan/info.txt
echo "date: $(date)" >> /home/highjump/tantangan/info.txt

echo "--- content dalam file---"
cat /home/highjump/tantangan/info.txt

echo "---docker status---"
sudo systemctl status docker | grep Active

echo "---tantangan selesai---"
