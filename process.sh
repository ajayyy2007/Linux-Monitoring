#!/bin/bash

echo "========== TOP PROCESSES =========="

echo
echo "Top CPU Processes:"
ps aux --sort=-%cpu | head -6

echo
echo "Top Memory Processes:"
ps aux --sort=-%mem | head -6

echo "==================================="
