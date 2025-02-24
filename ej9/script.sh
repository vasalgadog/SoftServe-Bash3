# !/bin/bash

source="$1"
destination="$2"

if [[ -z "$source" ]]; then
    echo "No se especificó el directorio de origen"
    exit 1
fi

if [[ -z "$destination" ]]; then
    echo "No se especificó el directorio de destino"
    exit 1
fi

if [[ ! -d "$source" ]]; then
    mkdir "$source"
    echo "Se creó el directorio de origen no existe"
    exit 1
fi

if [[ ! -d "$destination" ]]; then
    mkdir "$destination"
    echo "Se creó el directorio de destino no existe"
    exit 1
fi

for file in "$source"/*.log; do
    if [[ -e "$file" ]]; then
        filename=$(basename "$file")
        name="${filename%.*}"
        mv "$file" "$destination/${name}.log"
    fi
done

echo "Archivos movidos"