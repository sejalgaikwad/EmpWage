#!/bin/bash -x

echo "Welcome to Employee Wage Computation "

random=$((RANDOM%2))

if [ $random -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee is Present"
fi
