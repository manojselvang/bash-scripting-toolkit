#!/bin/bash

# System Status Check Script
# Checks CPU status or log availability based on input

# Validate input
if [[ "$#" -ne 1 ]]; then
    echo "Usage: $0 <cpu|log>"
    exit 1
fi

MODE="$1"

# Simulated CPU load
CURRENT_LOAD=85

if [[ "$MODE" == "cpu" ]]; then

    if [[ "$CURRENT_LOAD" -gt 80 ]]; then
        echo "Result: CPU Critical"
    elif [[ "$CURRENT_LOAD" -gt 60 ]]; then
        echo "Result: CPU Elevated"
    else
        echo "Result: CPU Normal"
    fi

elif [[ "$MODE" == "log" ]]; then

    if [[ -f "/var/log/syslog" ]]; then
        echo "Result: Log Active"
    else
        echo "Result: Log Missing"
    fi

else
    echo "Error: Invalid selection"
    exit 1
fi
