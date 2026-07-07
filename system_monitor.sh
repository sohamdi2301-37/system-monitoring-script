#!/bin/bash

# Define thresholds (Change these values if needed)
DISK_THRESHOLD=80
MEM_THRESHOLD=80

echo "=== SYSTEM MONITORING REPORT ==="
echo "Timestamp: $(date)"
echo "--------------------------------"

# 1. Monitor Disk Usage
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')
echo "Current Disk Usage: $DISK_USAGE%"

if [ "$DISK_USAGE" -gt "$DISK_THRESHOLD" ]; then
    echo "[ALERT] Disk usage has crossed the threshold of $DISK_THRESHOLD%!"
fi

# 2. Monitor Memory Usage
MEM_USAGE=$(free | grep Mem | awk '{print int($3/$2 * 100)}')
echo "Current Memory Usage: $MEM_USAGE%"

if [ "$MEM_USAGE" -gt "$MEM_THRESHOLD" ]; then
    echo "[ALERT] Memory usage has crossed the threshold of $MEM_THRESHOLD%!"
fi

echo "--------------------------------"
# 3. Display Top 3 CPU Consuming Processes
echo "Top 3 CPU Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 4

echo "================================"
