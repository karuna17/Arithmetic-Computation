#!/bin/bash -x

echo "take inputs for a,b,c: "
read a b c
result=$((a%b+c))
echo $result
