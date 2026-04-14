#!/bin/bash

# Simple Route Lookup Script

if [[ "$#" -ne 1 ]]; then
    echo "Usage: $0 <target_ip>"
    exit 1
fi

TARGET="$1"

OUTPUT=$(ip route get "$TARGET")

# Check if route has a gateway
if echo "$OUTPUT" | grep -q "via"; then
    GATEWAY=$(echo "$OUTPUT" | awk '{print $3}')
    INTERFACE=$(echo "$OUTPUT" | awk '{print $5}')
    SOURCE=$(echo "$OUTPUT" | awk '{print $7}')
else
    GATEWAY="Direct Link"
    INTERFACE=$(echo "$OUTPUT" | awk '{print $4}')
    SOURCE=$(echo "$OUTPUT" | awk '{print $6}')
fi

echo "Target: $TARGET | Gateway: $GATEWAY | Interface: $INTERFACE | Source: $SOURCE"
