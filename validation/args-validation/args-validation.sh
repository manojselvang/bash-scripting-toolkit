#!/bin/bash

# Config Generator Script
# Creates a config file using service name and port

# Validate number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <service_name> <port>"
    exit 1
fi

SERVICE_NAME="$1"
PORT="$2"

# Validate service name (basic check)
if ! [[ "$SERVICE_NAME" =~ ^[a-zA-Z0-9_-]+$ ]]; then
    echo "Error: Invalid service name"
    exit 1
fi

# Validate port (numeric and range)
if ! [[ "$PORT" =~ ^[0-9]+$ ]] || [ "$PORT" -lt 1 ] || [ "$PORT" -gt 65535 ]; then
    echo "Error: Invalid port number"
    exit 1
fi

CONFIG_FILE="${SERVICE_NAME}.conf"

# Create config file
{
    echo "[service]"
    echo "name=$SERVICE_NAME"
    echo "port=$PORT"
} > "$CONFIG_FILE"

echo "Config generated: $CONFIG_FILE"
