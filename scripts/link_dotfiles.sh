#!/bin/bash

# Check arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source> <destination>"
    exit 1
fi

SOURCE=$(realpath "$1")
DESTINATION=$(realpath "$2")

# Check if source exists (file or directory)
if [ ! -e "$SOURCE" ]; then
    echo "Error: source not found: $SOURCE"
    exit 1
fi

# Create destination directory if it doesn't exist
mkdir -p "$(dirname "$DESTINATION")"

# Copy source to destination (recursive if directory)
if [ -d "$SOURCE" ]; then
    cp -r "$SOURCE" "$DESTINATION"
else
    cp "$SOURCE" "$DESTINATION"
fi

# Remove original (file or directory)
if [ -d "$SOURCE" ]; then
    rm -rf "$SOURCE"
else
    rm "$SOURCE"
fi

# Create symlink from destination back to source
ln -s "$DESTINATION" "$SOURCE"

echo "Copied $SOURCE → $DESTINATION and created symlink back"
