#!/bin/bash -x

declare -A AllResults
echo "take inputs for a,b,c: "
read a b c

AllResults[res1]=$((a+b*c))
AllResults[res2]=$((a*b+c))
AllResults[res3]=$((c+a/b))
AllResults[res4]=$((a%b+c))

echo "All Results from dictionary: " ${AllResults[@]}
