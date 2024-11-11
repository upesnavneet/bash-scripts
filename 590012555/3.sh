#!/bin/bash

if test -r "$1"; then
	echo "$1 exists and is readable"
fi
if test -w "$1"; then
        echo "$1 exists and is writable"
fi
if test -x "$1"; then
        echo "$1 exists and is executable"
fi
