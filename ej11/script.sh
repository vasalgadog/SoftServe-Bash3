# !/bin/bash

path="$1"
if [[ -z "$path" ]]; then
    path="."
fi

for file in "$path"/*.sh; do
    echo "Cambiando permisos de $file"
    if [[ -e "$file" ]]; then
        chmod +rwx "$file"
        echo "Permisos cambiados"
    fi
done