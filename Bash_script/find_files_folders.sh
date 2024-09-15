#!/bin/bash


home_directory=$HOME #directory home

if [ -z $1 ]; then
	echo "exit operation, not argument"
	exit 1
else
	echo "Argument is: $1"
fi
# check argument
	
result=$(find $home_directory -name $1) #find or directory in home_directory

if [[ -z $result ]]; then
	echo "File $1 not found"
else
	for output in $result
	do
		echo "Find files $output"
	done
fi

