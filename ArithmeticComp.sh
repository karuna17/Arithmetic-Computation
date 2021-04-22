#!/bin/bash -x

echo "take inputs for a,b,c: "
read a b c
result=$((c+a/b))
echo $result
