#!/bin/bash

echo -e "\n========MONITORING LOGS OF CPU AND MEMORY UTILIZATION $(date).=========\n" >> metrics.txt

#Function for CPU Utilization

cpu_util(){

	var_cpu=$(top -bn 1 | awk '/^%Cpu/{print $2}') 
	echo "CPU: $var_cpu%" >> metrics.txt
#	if [$var_cpu -gt 80]; then
#		echo "CPU utilization has crossed the threashold of 80%"
#	fi


}

#Function for Memory Utilization

memory_util(){
	
	var_memory=$(free | awk '/^Mem/{print int($3/$2*100)}')	
	echo "MEMORY: $var_memory%">> metrics.txt
#	if [$var_memory -gt 80]; then
 #               echo "MEMORY utilization has crossed the threashold of 80%"
  #      fi

}



#loop for 10 sec to run the script


end=$((SECONDS+10))

while [ $SECONDS -lt $end ]; do
	cpu_util
	memory_util
	sleep 2
done







