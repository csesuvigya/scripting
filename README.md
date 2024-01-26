## OBJECTIVE

This bash script fetches the CPU and Memory utilization and stores the output in metrics.txt file.

## EXECUTION

metrics.sh file contains the bash script to fetch the CPU and Memory utilization with timestamp.
To execute this script, open your terminal and navigate to the directory where metrics.sh is placed. Execute the below command in your terminal.

> bash metrics.sh

The logs generated through this script are saved in the metrics.txt file (it will be generated in the same directory).


## Logic

The script is devided in two functions-

**Function 1: cpu_util()**

This functions uses the "top" and "awk" command to fetch the current cpu utilization. 

top -bn 1 | awk '/^%Cpu/{print $2}'

**Function 2: memory_util**

This function uses the "free" and "awk" command to fetch the current memory utilization.

free | awk '/^Mem/{print int($3/$2*100)}'


