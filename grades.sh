#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
    echo "Error: expect 1 argument only!" >&2
    exit 1
fi

declare -a names
declare -a grades

for i in $(seq 1 $1); do
    read name
    names+=("$name")

    read grade

    if ! [[ $grade =~ ^[0-9]+$ ]] || [[ $grade -gt 100 ]]; then
        echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted." >&2
        exit 1
    fi

    grades+=("$grade")
done

for i in $(seq 0 $(( $1 - 1 ))); do
    name=${names[$i]}
