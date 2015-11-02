#!/bin/sh

for object in $@
do
	if [ -d $object ]
	then
		echo $object is a directory
	elif [ -f $object ] 
	then
		echo $object is a file
	else
		echo $object it is something else
	fi
done
