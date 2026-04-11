#!/bin/bash

# Service Validation Script using Array
# Checks if a given service exists in a predefined list

OUTPUT_FILE="/home/user/service_check.txt"

services=("nginx" "mysql" "ssh")

# Read user input
read -p "Enter service name: " SERVICE_NAME

# Validate input (not empty)
if [[ -z "$SERVICE_NAME" ]]; then
    echo "Error: Service name cannot be empty"
    exit 1
fi

FOUND=false

# Check if service exists in array
for service in "${services[@]}"; do
    if [[ "$SERVICE_NAME" == "$service" ]]; then
        echo "$SERVICE_NAME service is available" > "$OUTPUT_FILE"
        FOUND=true
        break
    fi
done

# If not found
if [[ "$FOUND" == false ]]; then
    echo "$SERVICE_NAME service not found" > "$OUTPUT_FILE"
fi

echo "Result written to $OUTPUT_FILE"
