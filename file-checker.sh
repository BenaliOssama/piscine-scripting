#!/usr/bin/env bash

if [[ $# -eq 0 ]]; then
    echo "Error: No file provided"
    exit 1
fi

if ! [[ -e $1 ]]; then
    echo "File does not exist"
    exit 1
fi

echo "File exists"

if [[ -r $1 ]]; then
    echo "File is readable"
else
    echo "File is not readable"
fi

if [[ -w $1 ]]; then
    echo "File is writable"
else
    echo "File is not writable"
fi

if [[ -x $1 ]]; then
    echo "File is executable"
else
    echo "File is not executable"
fi
