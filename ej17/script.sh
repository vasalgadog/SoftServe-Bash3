# !/bin/bash

if [[ -z "$1" ]]; then
    echo "File not specified"
    exit 1
fi

if [[ ! -f "$1" ]]; then
    echo "File not found"
    exit 1
fi

wordOriginal="$2"

if [[ -z "$wordOriginal" ]]; then
    echo "Word to replace not specified"
    exit 1
fi

wordNew="$3"

if [[ -z "$wordNew" ]]; then
    echo "Word to replace with not specified"
    exit 1
fi

if sed -i "s/$wordOriginal/$wordNew/gp" "$1" | grep -q .; then
    echo "Word replaced"
    exit 0
else
    echo "Word not found"
    exit 1
fi