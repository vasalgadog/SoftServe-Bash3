# !/bin/bash

if [[ -z "$1" ]]; then
    echo "File not specified"
    exit 1
fi

if [[ ! -f "$1" ]]; then
    echo "File not found"
    exit 1
fi

word="$2"

if [[ -z "$word" ]]; then
    echo "Word not specified"
    exit 1
fi

count=$(grep -o "$word" "$1" | wc -l)

if [[ "$count" -gt 0 ]]; then 
    echo "The word $word appears $count times in $1"
else
    echo "The word $word does not appear in $1"
fi