# !/bin/bash

num="$1"

if [[ -z "$num" ]]; then
    echo "Please provide a number."
    read num
fi

if ((num % 2 == 0)); then
    echo "Number is even."
else
    echo "Number is odd."
fi