#!/bin/bash


read -t 5 -p 'Enter basic salary:' base_salary

echo "base salary diag --$base_salary=="

if [ -z $base_salary ]
then
	echo "You not entered any value, let base salary be 1000"
	let base_salary=1000
else
	echo "You entered base salary : $base_salary"
fi

if [ $base_salary -le 0 ];
then
	echo "Salary cannot be zero or negative"
	exit 1
fi

if [ $base_salary -lt 1500 ];
then
	#hra=$( bc <<< "scale=2; $base_salary * 0.1" )
	hra=$(awk "BEGIN {printf \"%.2f\",$base_salary*0.1}")
	da=$(awk "BEGIN {printf \"%.2f\",$base_salary*0.9}")
	echo "HRA = $hra"
	echo "DA = $da"
else 
        let hra=500
        da=$(awk "BEGIN {printf \"%.2f\",$base_salary*0.98}")
	echo "HRA = $hra"
        echo "DA = $da"

fi
#RESULT=$(awk "BEGIN {printf \"%.2f\",${IMG_WIDTH}/${IMG2_WIDTH}}")
