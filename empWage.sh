#!/bin/bash -x

echo "Welcome to Employee Wage Computation "

declare -A dailyWageDictionary
declare -A totalWageDictionary



FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
WAGE_PER_HOUR=20
NUM_WORKING_DAYS=20
MAX_HRS_IN_MONTH=100

totalEmpHrs=0
days=0
totalWage=0

function getWorkingHour(){
	randomTime=$((RANDOM%2))
	case $randomTime in 
	1) workingHour=$FULL_DAY_WORKING_HOUR;;
	0) workingHour=$HALF_DAY_WORKING_HOUR;;
	esac
	echo $workingHour
}

while [ $NUM_WORKING_DAYS -gt 0 ]
	do
		randomPresent=$((RANDOM%2))
		if [ $randomPresent -eq 0 ]
		then
			echo "Employee is Absent"
		else
			workingHour=$(getWorkingHour)
		fi
      dailyWage=$(($workingHour*$WAGE_PER_HOUR))
		echo "Daily Wage of Employee :- " $dailyWage
	#	dailyWage[$days]=$dailyWage
		totalEmpHrs=$(($totalEmpHrs+$workingHour))
      totalWage=$(($totalWage+$dailyWage))
		#totalWages[$days]=$totalWage
		dailyWageDictionary["Day_$days"]="$dailyWage   $totalWage"
		#totalWageDictionary["Day $days"]=$totalWage
		days=$(($days+1))
		((NUM_WORKING_DAYS--))
done
#echo ${dailyWage[@]}

for i in  "${!dailyWageDictionary[@]}"
do
	echo "Day_$i     ${dailyWageDictionary[$i]}"
	#echo ${totalWageDictionary[@]}
done

