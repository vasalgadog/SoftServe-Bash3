# !/bin/bash

path="$1"
if [[ -z "$path" ]]; then
    path="."
fi

for file in "$path"/*.txt; directorio
    if [[ -e "$file" ]]; then
        filename=$(basename "$file")
        name="${filename%.*}"
        mv "$file" "$path/${name}_backup.txt"
    fi
done

echo "Archivos renombrados"