#!/bin/bash

# Download Speed Check Script
# Downloads a sample file and calculates speed

URL="http://speedtest.tele2.net/10MB.zip"
TEMP_FILE="/tmp/test_download_file"

# Check for curl or wget
if command -v curl >/dev/null 2>&1; then
    TOOL="curl"
elif command -v wget >/dev/null 2>&1; then
    TOOL="wget"
else
    echo "Error: Neither curl nor wget is installed"
    exit 1
fi

START=$(date +%s)

# Download file
if [[ "$TOOL" == "curl" ]]; then
    curl -s -o "$TEMP_FILE" "$URL"
else
    wget -q -O "$TEMP_FILE" "$URL"
fi

END=$(date +%s)

# Calculate speed
if [[ -f "$TEMP_FILE" ]]; then
    SIZE=$(stat -c %s "$TEMP_FILE")
    DURATION=$((END - START))

    if [[ "$DURATION" -gt 0 ]]; then
        SPEED=$((SIZE / DURATION / 1024 / 1024))

        echo "Size: $((SIZE / 1024 / 1024)) MB"
        echo "Time: ${DURATION}s"
        echo "Speed: ${SPEED} MB/s"
    else
        echo "Download too fast to measure"
    fi

    rm -f "$TEMP_FILE"
else
    echo "Download failed"
    exit 1
fi
