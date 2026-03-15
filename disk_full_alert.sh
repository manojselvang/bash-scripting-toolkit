

#!/bin/bash
THRESHOLD=80
PARTITION="/"

USAGE=$(df -h "$PARTITION" | tail -1 | awk {'print $5} | sed 's/%//')
echo "Checking disk usage for partition: $PARTITION"
echo "Current Usage: $USAGE"
echo "Threshold: $THRESHOLD"

if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Alert: Disk usage is High"
fi
