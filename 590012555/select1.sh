#!/bin/bash

echo "enter your options submitted/not submitted"

select assignment in submitted not_submitted Quit
do
	case $assignment in
		submitted)
			echo "Well done"
			;;
		not_submitted)
			echo "defaulter"
			;;
		Quit)
			break
			;;
		*)
			echo "invalid selection"
	esac
done

