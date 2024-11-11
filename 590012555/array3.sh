#!/bin/bash

names[0]="max"
names[1]="sam"
names[2]="zach"
arr=(2 5 "priti")
echo '${#names[@]} = ' "${#names[@]}"
echo '${names[2]} = ' "${names[2]}"
echo '${names[@]} = ' "${names[@]}"
echo '${names[*]} = ' "${names[*]}"
echo '${arr[*]} = ' "${arr[*]}"
