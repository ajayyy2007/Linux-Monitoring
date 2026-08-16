#!/bin/bash

echo "========== CPU INFORMATION =========="

# Number of logical CPUs
cpu_count=$(nproc)

# CPU model
cpu_model=$(grep -m 1 "model name" /proc/cpuinfo )

# CPU cores
cpu_cores=$(grep -m 1 "cpu cores" /proc/cpuinfo)

# Load average
load=$(cat /proc/loadavg )

echo "CPU Model       : $cpu_model"
echo "Logical CPUs    : $cpu_count"
echo "CPU Cores       : $cpu_cores"
echo "Load Average    : $load"

echo "====================================="
