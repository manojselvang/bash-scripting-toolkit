#!/bin/bash

# Simple Backup Script
# - Checks directory
# - Verifies disk space
# - Copies database file
# - Classifies file size

DATABASE_NAME="${1:-production_db}"                    # Input file (default if not provided)
BACKUP_DATE=$(date +%Y%m%d)
BACKUP_DIR="/home/ubuntu/backup/date_$BACKUP_DATE"
BACKUP_FILE="$BACKUP_DIR/${DATABASE_NAME}_BACKUP.txt"
LARGE_FILE=10000                                      # Size threshold (bytes)

echo "Checking if $BACKUP_DIR directory exists"

# Check/Create backup directory
if [ -d "$BACKUP_DIR" ]; then
    echo "Directory exists"
else
    echo "Creating backup directory: $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
fi

echo
echo "Checking available disk space"

# Get available disk space (in KB)
AVAILABLE_SPACE=$(df / | awk 'NR==2 {print $4}')
MINIMUM_SPACE=1000

if [ "$AVAILABLE_SPACE" -gt "$MINIMUM_SPACE" ]; then
    echo "Sufficient disk space available"
else
    echo "Error: Not enough disk space"
    exit 1
fi

echo
echo "Checking database file"

# Check if database file exists
if [ -f "$DATABASE_NAME" ]; then
    echo "Database found, starting backup"

    cp "$DATABASE_NAME" "$BACKUP_FILE"

    # Get file size (more reliable than ls)
    FILE_SIZE=$(stat -c %s "$BACKUP_FILE")

    if [ "$FILE_SIZE" -gt "$LARGE_FILE" ]; then
        echo "Large file detected"
    else
        echo "Small file detected"
    fi

else
    echo "Error: Database not found"
    exit 1
fi

echo
echo "Backup complete"

# Verify backup
if [ -f "$BACKUP_FILE" ]; then
    echo "Backup file exists"
else
    echo "Error: Backup file missing"
    exit 1
fi
