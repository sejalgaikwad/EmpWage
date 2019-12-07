#!/bin/bash -x

echo "Welcome to Employee Wage Computation "

randomTime=$((RANDOM%2))

FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
WAGE_PER_HOUR=20
NUM_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

totalEmpHrs=0
days=0

function getWorkingHour(){
	case $randomTime in 
	1) workingHour=FULL_DAY_WORKING_HOUR;;
	0) workingHour=HALF_DAY_WORKING_HOUR;;
	esac
	echo $workingHour
}

for (( days=0;days<NUM_WORKING_DAYS;days++ ))
do
	while [[ $days -lt $NUM_WORKING_DAYS && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
	do
		randomPresent=$((RANDOM%2))
		if [ $randomPresent -eq 0 ]
		then
			echo "Employee is Absent"
		else
			workingHour=$( getWorkingHour )
			dailyWage=$(($workingHour*$WAGE_PER_HOUR))
			echo "Daily Wage of Employee :- " $dailyWage
		fi
		days=$(($days+1))
		totalEmpHrs=$(($totalEmpHrs+$workingHour))
		dailyWage[$days]=$dailyWage
		totalWage=$(($totalWage+$dailyWage))
		totalWages[$days]=$totalWage
	done
done
echo ${dailyWage[@]}
echo ${totalWages[@]}
echo ${totalWage}
