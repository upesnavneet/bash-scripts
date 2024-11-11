#!/bin/bash
if test -e "$1"; then
	echo "$1 exists"
else
	echo "$1 does not exists"
fi
if test -d "$1"; then
	echo "$1 is a directory file"
else
	echo "$1 is not a directory file"
fi
