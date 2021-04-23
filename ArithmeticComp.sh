#!/bin/bash -x

declare -A AllResults
declare -a Array

echo "take inputs for a,b,c: "
read a b c

res1=$((a+b*c))
res2=$((a*b+c))
res3=$((c+a/b))
res4=$((a%b+c))
AllResults[op1]=$res1
AllResults[op2]=$res2
AllResults[op3]=$res3
AllResults[op4]=$res4

echo "Dictionary: " ${AllResults[@]}

Array[0]=${AllResults[@]}

echo "Array: " ${Array[@]}
