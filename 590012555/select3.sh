#!/bin/bash

select operation in "create file" "list files" "delete files" "quit"
do
	case $operation in
		"create file")
			echo "enter the filename to create: "
			read filename
			touch "$filename"
			echo "file $filename created"
			;;
		"list files")
			echo "Files in the current directory"
			ls
			;;
		"delete files")
			read -p "enter the filename to be deleted" filename
			rm $filename
			echo "file detected"
			;;
		"quit")
			echo "quitting"
			break
			;;
		*)
			echo "Invalid selection"
			;;
	esac
done
