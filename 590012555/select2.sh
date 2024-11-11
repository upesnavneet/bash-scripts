#!/bin/bash

select num in 1 2 3 4 5 6 7 8 
do
	case $num in
	2|4|6|8)
		echo "even number"
		;;
	1|3|5|7)
		echo "odd number"
		;;
	quit)
		break
		;;
	*)
		echo "ERROR: Invalid selection"
		;;
	esac
done
