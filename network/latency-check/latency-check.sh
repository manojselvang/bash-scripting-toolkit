#!/bin/bash

# Latency Check Script
# Checks if a host is reachable and prints average latency

set -o pipefail

# Validate input
if [[ "$#" -ne 1 ]]; then
    echo "Usage: $0 <host>"
    exit 2
fi

HOST="$1"

# Run ping
OUTPUT=$(ping "$HOST" -c 3 -W 2 -q 2>/dev/null)
STATUS=$?

if [[ "$STATUS" -eq 0 ]]; then
    AVG_LATENCY=$(echo "$OUTPUT" | awk -F'/' '/rtt/ {print $5}')
    echo "$HOST is reachable"
    echo "Average latency: ${AVG_LATENCY} ms"
else
    echo "$HOST is unreachable"
    exit 1
fi
