#!/bin/sh


for object in $@
do
	object=`echo "$object" | tr "[:lower:]" "[:upper:]"`

	#working redirection patterns
	#ls $object 2>/dev/null 1>/dev/null
	#ls $object >/dev/null 2>&1
	ls $object 2>/dev/null >/dev/null
	exitcode=$?
    	if [ $exitcode -ne 0 ]
    	then
   	     echo "$0: object \"$object\" not found in current directory"
    	else
	     echo "$0: object \"$object\" FOUND in current directory"
    	fi

done
