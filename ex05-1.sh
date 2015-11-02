#!/bin/sh


for object in $@
do
	object=`echo "$object" | tr "[:lower:]" "[:upper:]"`

	ls $object >/dev/null	

    if [ $exitcode -ne 0 ]
    then
        echo "object $object not found in current directory"
    else
	echo "object $object FOUND in current directory"
    fi

done
