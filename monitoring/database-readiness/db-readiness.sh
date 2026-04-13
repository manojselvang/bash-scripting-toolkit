#!/bin/bash

# Database Readiness Check Script
# Checks if database is ready using a lock file

LOCK_FILE="/tmp/db_ready"
MAX_RETRIES="${1:-3}"   # Allow override
SLEEP_TIME=2
COUNT=0

while [[ "$COUNT" -lt "$MAX_RETRIES" ]]; do
    if [[ -f "$LOCK_FILE" ]]; then
        echo "Database connected."
        exit 0
    else
        echo "Waiting for database..."
        ((COUNT++))
        sleep "$SLEEP_TIME"
    fi
done

echo "Error: Database timed out."
exit 1
