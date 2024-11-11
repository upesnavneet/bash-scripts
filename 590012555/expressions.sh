#!/bin/bash

x=2
echo "Initial value is = $x"
x=$((x*2))
echo "$x after brackets statement"
echo "$((x=x*x)) is x squared"
echo "value of x after squaring is $x"
