#!/bin/sh

# Check for number of arguments
if [ $# -eq 2 ]
then
	# create directory
	mkdir -p $(dirname $1)

	# Create file
	touch $1

	# Add string
	 echo $2 > $1
	 echo "File created successfully!"
	 exit 0
else
	 echo "Please enter 2 arguments"
	 exit 1
fi
