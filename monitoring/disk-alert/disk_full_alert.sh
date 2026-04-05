#!/bin/bash

# Disk Usage Monitoring Script
# Checks disk usage and alerts if threshold is exceeded

THRESHOLD="${1:-80}"     # Allow override via argument
PARTITION="${2:-/}"      # Allow custom partition

# Validate df command
if ! command -v df >/dev/null 2>&1; then
    echo "Error: df command not found"
    exit 1
fi

# Get disk usage (percentage without %)
USAGE=$(df -P "$PARTITION" | awk 'NR==2 {print $5}' | tr -d '%')

echo "Checking disk usage for partition: $PARTITION"
echo "Current Usage: $USAGE%"
echo "Threshold: $THRESHOLD%"

# Validate numeric values
if ! [[ "$USAGE" =~ ^[0-9]+$ && "$THRESHOLD" =~ ^[0-9]+$ ]]; then
    echo "Error: Invalid numeric values"
    exit 1
fi

# Check threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Alert: Disk usage is HIGH"
else
    echo "Disk usage is within limits"
fi
