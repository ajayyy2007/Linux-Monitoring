#!/bin/bash

echo "========== DISK INFORMATION =========="

df -h --output=source,size,used,avail,pcent,target | tail -n +2

echo

# Check root filesystem usage
usage=$(df --output=pcent / | tail -1 | tr -d ' %')

echo "Root Disk Usage : ${usage}%"

if [ "$usage" -lt 70 ]; then
    echo "Status          : HEALTHY"
    exit 0

elif [ "$usage" -lt 90 ]; then
    echo "Status          : WARNING"
    exit 1

else
    echo "Status          : CRITICAL"
    exit 2
fi
