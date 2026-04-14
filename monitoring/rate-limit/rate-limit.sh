#!/bin/bash

# Rate Limit Check Script
# Evaluates whether traffic is within defined limits

# Validate arguments
if [[ "$#" -ne 2 ]]; then
    echo "Usage: $0 <requests> <limit>"
    exit 2
fi

REQUESTS="$1"
LIMIT="$2"

# Validate numeric input
if ! [[ "$REQUESTS" =~ ^[0-9]+$ && "$LIMIT" =~ ^[0-9]+$ ]]; then
    echo "Error: Inputs must be numeric"
    exit 2
fi

check_traffic() {
    if [[ "$1" -lt 0 ]]; then
        return 2
    elif [[ "$1" -gt "$2" ]]; then
        return 1
    else
        return 0
    fi
}

check_traffic "$REQUESTS" "$LIMIT"
RESULT=$?

if [[ "$RESULT" -eq 0 ]]; then
    echo "Status: Traffic Normal"
elif [[ "$RESULT" -eq 1 ]]; then
    echo "Status: Limit Exceeded"
else
    echo "Status: System Error"
fi
