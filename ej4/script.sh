# !/bin/bash

dirPath="$1"
if [[ -z "$dirPath" ]]; then
    echo "Please provide a directory path."
    read dirPath
fi

ls -l "$dirPath"