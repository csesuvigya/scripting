This bash script fetches the CPU and Memory utilization. 

## EXECUTION

The bash script can be executed by the following command and the logs are generated in metrics.txt file.

bash metrics.sh

## Logic

The script is devided in two functions-

**Function 1: cpu_util()**

This functions uses the "top" and "awk" command to fetch the current cpu utilization. 

top -bn 1 | awk '/^%Cpu/{print $2}'

**Function 2: memory_util**

This function uses the "free" and "awk" command to fetch the current memory utilization.

free | awk '/^Mem/{print int($3/$2*100)}'


