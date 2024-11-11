#!/bin/bash
echo "enter array elements"
read -a arr
n=${#arr[@]}
for(( i = 0 ; i < n ; i++ )); do
	echo "${arr[i]}"
done

