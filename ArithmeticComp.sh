#!/bin/bash -x

declare -A AllResults
declare -a arr

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


arr=( $res1 $res2 $res3 $res4 )
length=${#arr[@]}
temp=0
echo "Before Sorting Array: " ${arr[@]}

for ((i=0; i<$length; i++ ))
do
 for ((j=$i+1; j<$length; j++ ))
 do
  if [ ${arr[i]} -gt ${arr[j]} ]
  then
   temp=${arr[i]}
   arr[i]=${arr[j]}
   arr[j]=$temp
  fi
 done
done

echo "After Sorting: " ${arr[@]}
