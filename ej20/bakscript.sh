#!/bin/bash

dir2backup="$1"
if [[ -z "$dir2backup" ]]; then
    echo "No directory specified"
    exit 1
elif [[ ! -d "$dir2backup" ]]; then
    echo "Directory not found"
    exit 1
fi

where2save=$2

if [[ -z "$where2save" ]]; then
    echo "No backup directory specified"
    exit 1
elif [[ ! -d "$where2save" ]]; then
    echo "Backup directory not found"
    exit 1
fi

where2save="$where2save/$(date +%Y-%m-%d)"

mkdir -p "$where2save"

for file in "$dir2backup"/*; do
    if [[ -e "$file" ]]; then
        filename="$(basename "$file")"
        cp -r "$file" "$where2save/$filename" && echo "Backed up: $filename" || echo "Failed to back up: $filename"
    fi
done

echo "Backup created at $where2save"