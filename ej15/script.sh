# !/bin/bash

if [[ ! -d "backup" ]]; then
    mkdir backup
fi

backup_dir=$(pwd)/backup

for file in $(find /etc/ -type f -name "*.conf"); do
    filename="$(basename "$file" ."conf")_$(date +%Y-%m-%d_%H-%M-%S).conf"
    cp "$file" "$backup_dir/$filename"
done