#!/bin/bash

# Incremental Backup Script
# Copies only new or modified files using manifest tracking

set -euo pipefail

# Input validation
if [[ "$#" -ne 2 ]]; then
    echo "Usage: $0 <source> <destination>"
    exit 1
fi

SRC="$1"
DST="$2"

if [[ ! -d "$SRC" ]]; then
    echo "Error: Source directory not found"
    exit 1
fi

if [[ ! -d "$DST" ]]; then
    echo "Error: Destination directory not found"
    exit 1
fi

# Convert to absolute paths
SRC="$(cd "$SRC" && pwd)"
DST="$(cd "$DST" && pwd)"

MANIFEST_FILE="$DST/.backup_manifest"

declare -i copied=0 skipped=0 errors=0
declare -A manifest

# Load existing manifest
if [[ -f "$MANIFEST_FILE" ]]; then
    while IFS='|' read -r path meta; do
        manifest["$path"]="$meta"
    done < "$MANIFEST_FILE"
fi

# Scan files
while IFS= read -r -d '' file; do
    rel="${file#$SRC/}"

    mtime=$(stat -c %Y "$file" 2>/dev/null || echo "0")
    size=$(stat -c %s "$file" 2>/dev/null || echo "0")

    # Check if new or modified
    if [[ ! -v manifest["$rel"] ]] || \
       [[ "${manifest[$rel]}" != "$mtime:$size" ]]; then

        dst_file="$DST/$rel"
        mkdir -p "$(dirname "$dst_file")"

        if cp -p "$file" "$dst_file" 2>/dev/null; then
            manifest["$rel"]="$mtime:$size"
            ((copied++))
        else
            ((errors++))
        fi
    else
        ((skipped++))
    fi

done < <(find "$SRC" -type f -print0)

# Save manifest (atomic write)
tmp="$MANIFEST_FILE.tmp"
> "$tmp"

for path in "${!manifest[@]}"; do
    echo "$path|${manifest[$path]}" >> "$tmp"
done

mv "$tmp" "$MANIFEST_FILE"

# Summary
echo "Copied: $copied, Skipped: $skipped, Errors: $errors"

[[ $errors -gt 0 ]] && exit 2
exit 0
