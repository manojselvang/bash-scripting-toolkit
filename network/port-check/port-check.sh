#!/bin/bash

# Port Check Script
# Checks if a specific port is open on a target host

# Validate arguments
if [[ "$#" -ne 2 ]]; then
    echo "Usage: $0 <host> <port>"
    exit 1
fi

HOST="$1"
PORT="$2"

# Check if nc is installed
if ! command -v nc >/dev/null 2>&1; then
    echo "Error: netcat (nc) is not installed"
    exit 2
fi

# Check port
nc -z -w 2 "$HOST" "$PORT" 2>/dev/null

if [[ $? -eq 0 ]]; then
    echo "Port $PORT is OPEN on $HOST"
    exit 0
else
    echo "Port $PORT is CLOSED on $HOST"
    exit 1
fi
