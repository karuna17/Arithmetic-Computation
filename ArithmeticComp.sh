#!/bin/bash -x

declare -A AllResults
echo "take inputs for a,b,c: "
read a b c
result=$((a*b+c))
echo $result
