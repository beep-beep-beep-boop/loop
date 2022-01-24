#!/bin/bash

# create the command string

cmd_a=()

for a in ${@:1}; do
	cmd_a+=($a)
done

cmd=$(printf " %s" "${cmd_a[@]}")
cmd=${cmd:1}

# now loop the command

while :
do
	$cmd
	read -n 1 -s
done

