#!/bin/bash

if test -f "$1"
then
	echo "$1 is an ordinary file"
else
	echo "$1 is not an ordianry file"
fi
