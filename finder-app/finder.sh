#!/bin/sh

# Check if number of arguments
if [ $# -eq 2 ]
then 
	cd $1
	# Check if the path is found
	if [ $? -eq 1 ]
	then
		echo "Please enter valid directory path"
		exit 1
	else
		# Get the number of lines
		X=$( ls $1 | wc -l )
		# Get number of macthes
		Y=$( grep -r $2 $1 | wc -l )
		echo "The number of files are $X and the number of matching lines are $Y"
		exit 0
	fi
else
	echo "Please enter 2 arguments"
	exit 1
fi
