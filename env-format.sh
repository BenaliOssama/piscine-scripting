#!/bin/bash

echo $PWD
printenv  | grep "H" | awk -F "=" '{print $1}'
