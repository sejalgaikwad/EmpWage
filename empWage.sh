#!/bin/bash -x

echo "Welcome to Employee Wage Computation "

randomPresent=$((RANDOM%2))
randomTime=$((RANDOM%2))

FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
WAGE_PER_HOUR=20
NUM_WORKING_DAYS=20

function getWorkingHour(){
	case $randomTime in 
	1) workingHour=FULL_DAY_WORKING_HOUR;;
	0) workingHour=HALF_DAY_WORKING_HOUR;;
	esac
	echo $workingHour
}

if [ $randomPresent -eq 0 ]
then
	echo "Employee is Absent"
else
	echo "Employee is Present"
	workingHour=$( getWorkingHour )
		dailyWage=$(($workingHour*$WAGE_PER_HOUR))
	   monthlyWage=$(($NUM_WORKING_DAYS*dailyWage))
			echo " Monthly Wage:- " $monthlyWage
fi

