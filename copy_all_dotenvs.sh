#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 /path/to/destination/directory"
  exit 1
fi

SOURCE_DIR="$1"
DEST_DIR="$2"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Find all .env files and process them
find "$SOURCE_DIR" -type f -name ".env" | while read -r file; do
    # Get the directory name and file name
    dir_name=$(dirname "$file")
    base_name=$(basename "$dir_name")
    
    # Copy the .env file with the folder name appended
    cp "$file" "$DEST_DIR/${base_name}_env"
done

## Setting Permission
# chomod +x $filename
## Execute
# ./$filename
