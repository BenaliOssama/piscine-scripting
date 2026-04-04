#!/usr/bin/env bash

colors=("red" "blue" "green" "white" "black")

if [[ $# -ne 1 ]] || ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Error"
    exit 0
fi


index=$(( $1 - 1 ))

if [[ $index -lt 0 ]] || [[ $index -ge ${#colors[@]} ]]; then
    echo "Error"
    exit 0
fi

echo ${colors[$index]}
