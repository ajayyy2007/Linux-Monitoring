#!/bin/bash

LOG_FILE="./logs/monitor.log"

echo "========================================" >> "$LOG_FILE"
echo "       LINUX SYSTEM MONITOR" >> "$LOG_FILE"
echo "========================================" >> "$LOG_FILE"
echo "Date: $(date)" >> "$LOG_FILE"
echo >> "$LOG_FILE"

echo "===== SYSTEM =====" >> "$LOG_FILE"
./modules/system.sh >> "$LOG_FILE" 2>&1

echo >> "$LOG_FILE"
echo "===== CPU =====" >> "$LOG_FILE"
./modules/cpu.sh >> "$LOG_FILE" 2>&1

echo >> "$LOG_FILE"
echo "===== MEMORY =====" >> "$LOG_FILE"
./modules/memory.sh >> "$LOG_FILE" 2>&1

echo >> "$LOG_FILE"
echo "===== DISK =====" >> "$LOG_FILE"
./modules/disk.sh >> "$LOG_FILE" 2>&1

echo >> "$LOG_FILE"
echo "===== NETWORK =====" >> "$LOG_FILE"
./modules/network.sh >> "$LOG_FILE" 2>&1

echo >> "$LOG_FILE"
echo "===== PROCESSES =====" >> "$LOG_FILE"
./modules/process.sh >> "$LOG_FILE" 2>&1

echo "========================================" >> "$LOG_FILE"
echo "Monitoring completed." >> "$LOG_FILE"
echo "========================================" >> "$LOG_FILE"
