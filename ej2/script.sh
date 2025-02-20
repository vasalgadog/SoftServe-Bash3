# !/bin/bash

name="$1"
if [[ -z "$name" ]]; then
    echo "Please provide a name."
    read name
fi

echo "Hello, $name! Welcome to Bash scripting."