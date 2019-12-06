#!/bin/bash -x

echo "Welcome to Employee Wage Computation "

random=$((RANDOM%2))
FULL_DAY_HOUR=8
WAGE_PER_HOUR=20

if [ $random -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee is Present"
	dailyWage=$(($FULL_DAY_HOUR*$WAGE_PER_HOUR))
	echo "Daily Wage:-" $dailyWage
fi
