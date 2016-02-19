#! /bin/bash

echo "$1"

if [[ "$#" -ne 1 ]] || [[ "${#1}" -ne 1 ]]
then
    echo "invalid input"
elif [[ "$1" -le 9 ]] && [[ "$1" -ge 1 ]]
then
    for (( i = 0; i < "$1"; i++ )); do
        echo "[$i] blagh"
    done
fi
