#!/bin/bash

# Forensic Log Scanner
# Scans .log files for a given keyword and preserves them as evidence

# Validate input
if [[ "$#" -ne 2 ]] || [[ ! -d "$1" ]]; then
    echo "Usage: $0 <log_directory> <search_word>"
    exit 1
fi

TARGET_DIR="$1"
SEARCH_WORD="$2"
EVIDENCE_DIR="$TARGET_DIR/evidence"

# Create evidence directory
mkdir -p "$EVIDENCE_DIR"

# Handle no .log files case
shopt -s nullglob

FOUND=false

for file in "$TARGET_DIR"/*.log; do
    if grep -q "$SEARCH_WORD" "$file"; then
        DEST_FILE="$EVIDENCE_DIR/$(basename "$file")"

        cp "$file" "$DEST_FILE"
        chmod 400 "$DEST_FILE"

        echo "Evidence collected: $(basename "$file")"
        FOUND=true
    fi
done

if [[ "$FOUND" == false ]]; then
    echo "No matching logs found for keyword: $SEARCH_WORD"
fi

echo "Scan completed"
