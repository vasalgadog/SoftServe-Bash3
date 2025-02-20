# !/bin/bash

path="$1"
if [[ -z "$path" ]]; then
    path="."
fi

find "$path" -name "*.txt"