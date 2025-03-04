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

echo "* 0 * * * $(pwd)/bakscript.sh $dir2backup $where2save" > newjob

crontab newjob
rm newjob