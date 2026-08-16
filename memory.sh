#!/bin/bash

echo "========== MEMORY INFORMATION =========="

# Get memory values from /proc/meminfo
total_kb=$(grep "^MemTotal:" /proc/meminfo | awk '{print $2}')
available_kb=$(grep "^MemAvailable:" /proc/meminfo | awk '{print $2}')

# Calculate used memory
used_kb=$((total_kb - available_kb))

# Convert KB to MB
total_mb=$((total_kb / 1024))
used_mb=$((used_kb / 1024))
available_mb=$((available_kb / 1024))

# Calculate memory usage percentage
usage=$((used_kb * 100 / total_kb))

echo "Total Memory     : ${total_mb} MB"
echo "Used Memory      : ${used_mb} MB"
echo "Available Memory : ${available_mb} MB"
echo "Memory Usage     : ${usage}%"

# Health check
if [ "$usage" -lt 70 ]; then
    echo "Status           : HEALTHY"
    exit 0

elif [ "$usage" -lt 90 ]; then
    echo "Status           : WARNING"
    exit 1

else
    echo "Status           : CRITICAL"
    exit 2
fi

echo "========================================"
