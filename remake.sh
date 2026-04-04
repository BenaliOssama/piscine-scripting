#!/usr/bin/env bash

if [[ $# -ne 1 ]] || ! [[ -d $1 ]]; then
    echo "Error"
fi

dir=$1



touch "$dir/ciao"
chmod 442 "$dir/ciao"
touch -t 202401010001 "$dir/ciao"

mkdir -p "$dir/mamma"
chmod 777 "$dir/mamma"
touch -t 202401020001 "$dir/mamma"

touch "$dir/guarda"
chmod 400 "$dir/guarda"
touch -t 202401030001 "$dir/guarda"

touch "$dir/come"
chmod 642 "$dir/come"
touch -t 202401040001 "$dir/come"

mkdir -p "$dir/mi"
chmod 452 "$dir/mi"
touch -t 202401050001 "$dir/mi"

touch "$dir/diverto"
chmod 421 "$dir/diverto"
touch -t 202401060001 "$dir/diverto"
