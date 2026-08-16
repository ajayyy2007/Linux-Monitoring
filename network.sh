#!/bin/bash

echo "========== NETWORK INFORMATION =========="

ip_address=$(hostname -I | awk '{print $1}')

echo "IP Address : $ip_address"

echo
echo "Interfaces:"
ip -br addr

echo

if ping -c 1 8.8.8.8 > /dev/null 2>&1
then
    echo "Internet   : CONNECTED"
else
    echo "Internet   : DISCONNECTED"
fi

if ping -c 1 google.com > /dev/null 2>&1
then
    echo "DNS        : WORKING"
else
    echo "DNS        : NOT WORKING"
fi

echo "=========================================="
