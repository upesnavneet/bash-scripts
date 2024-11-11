#!/bin/bash

read -p "enter two number" one two
read -p "enter a for addition, s for subtracton, n for multiplication, d for division" op
echo "$one $two"
case $op in
	a)
		echo "$((one+two))"
	s)
		echo "$((one-two))"
	n)
		echo "$((one*two))"
	d)
		echo "$((one/two))"
	*)
		echo "invalid input"
esac
