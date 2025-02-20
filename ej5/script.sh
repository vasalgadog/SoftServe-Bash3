# !/bin/bash

num1="$1"
num2="$2"
op="$3"

if [[ -z "$num1" ]]; then
    echo "Please provide a number."
    read num1
    echo "Please provide another number."
    read num2
    echo "Please provide an operation (+, -, *, /)."
    read op
fi

if [[ "$op" == "+" ]]; then
    echo $((num1 + num2))
elif [[ "$op" == "-" ]]; then
    echo $((num1 - num2))
elif [[ "$op" == "*" ]]; then
    echo $((num1 * num2))
elif [[ "$op" == "/" ]]; then
    if [[ "$num2" == 0 ]]; then
        echo "Error: Division by zero."
        exit 1
    fi
    echo $((num1 / num2))
else
    echo "Invalid operation."
fi



