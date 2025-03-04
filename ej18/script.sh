# !/bin/bash

directory="$1"
if [[ -z "$directory" ]]; then
    echo "No directory specified"
    exit 1
elif [[ ! -d "$directory" ]]; then
    echo "Directory not found"
    exit 1
fi

$deletedCount=0
find "$directory" -type f -mtime +7 -exec rm -f {} \; -exec ((deletedCount++)) \;

if [[ $deleted_count -gt 0 ]]; then
    echo "$deleted_count files were deleted."
else
    echo "No files were deleted."
fi