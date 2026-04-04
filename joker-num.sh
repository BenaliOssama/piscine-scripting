#sh!/usr/bin/env bash

if [[ $# -ne 1 ]] || ! [[ $1 =~ ^[0-9]+$ ]] || [[ $1 -lt 1 ]] || [[ $1 -gt 100 ]]; then
    echo "Error: wrong argument"
    exit 0
  fi

secret=$1
moves=0
tries_left=5

while [[ $tries_left -gt 0 ]]; do
    read -p "Enter your guess ($tries_left tries left):
" guess

    if [[ -z "$guess" ]] || ! [[ $guess =~ ^[0-9]+$ ]] || [[ $guess -gt 100 ]] ; then
        continue
    fi

    tries_left=$(( tries_left - 1 ))
    moves=$(( moves + 1 ))

    if [[ $guess -eq $secret ]]; then
        echo "Congratulations, you found the number in $moves moves!"
        exit 0
    elif [[ $guess -gt $secret ]]; then
        echo "Go down"
    else
        echo "Go up"
    fi
done

echo "You lost, the number was $secret"
