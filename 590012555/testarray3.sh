#!/bin/bash

echo "enter the array"
read -a  arr
n=${#arr[@]}
min=${arr[0]}
for (( i = 0 ; i < n ; i++)); do
	if [ $min -gt $i ]; then
		min=${arr[i]}; fi
done
echo "the minimum value in array is $min"
