# !/bin/bash

file="$1"

if [ -z "$file" ]; then
    echo "Please provide a filename:"
    read file
fi

if [ -e "$file" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi