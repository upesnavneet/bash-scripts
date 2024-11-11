#!/bin/bash

pattern="^[a-zA-Z_][[a-zA-Z0-9]*$"
if [[ $1 =~ $pattern ]]; then
	echo "valid filename"
	touch $1
	echo "file $! is created"
else
	echo "invalid filename"
fi

