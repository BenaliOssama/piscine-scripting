#!/usr/bin/env bash

if [[ $# -ne 1 ]] || ! [[ -d $1 ]]; then
    echo "Error"
    exit 1
fi

dir=$1

touch "$dir/ciao"
chmod 442 "$dir/ciao"
touch -t 202601010001 "$dir/ciao"

mkdir -p "$dir/mamma"
chmod 777 "$dir/mamma"
touch -t 202601020001 "$dir/mamma"

touch "$dir/guarda"
chmod 400 "$dir/guarda"
touch -t 202601030001 "$dir/guarda"

touch "$dir/come"
chmod 642 "$dir/come"
touch -t 202601040001 "$dir/come"

mkdir -p "$dir/mi"
chmod 452 "$dir/mi"
touch -t 202601050001 "$dir/mi"

touch "$dir/diverto"
chmod 421 "$dir/diverto"
touch -t 202601060001 "$dir/diverto"
