#!/bin/bash

echo "enter elements of the array"
read -a arr
n=${#arr[@]}
s=0
for(( i = 0 ; i < n ; i++ )); do
	s=$((s + arr[i]))
done
echo "the sum of the array is $s"
