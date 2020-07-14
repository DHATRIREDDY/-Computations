#!/bin/bash
declare -A dict

function storeArray(){
	array=("$@")
}
function descending_order(){
	n=${#array[@]}
	for(( i=0;i<n;i++ ))
	do
		for(( j=0;j<n-i-1;j++ ))
		do
			if [ ${array[j]} -lt ${array[$((j+1))]} ]
			then
				temp=${array[j]}
				array[j]=${array[$((j+1))]}
				array[$((j+1))]=$temp
			fi
		done
	done
}
read -p "Enter a value:" a
read -p "Enter b value:" b
read -p "Enter c value:" c
operation4=$(( ($a%$b)+$c ))
echo "The operation4 value is:"$operation4
operation3=$(( $c+($a/$b) ))
echo "The operation3  value is:"$operation3
operation1=$(( $a+($b*$c) ))
echo "The operation1 value is:"$operation1
operation2=$(( ($a*$b)+$c ))
echo "The operation2 value is:"$operation2

dict["op1"]=$operation1
dict["op2"]=$operation2
dict["op3"]=$operation3
dict["op4"]=$operation4
echo "stored results in Dictionary:"${dict[@]}

echo "Results added from dictionary to arry:"
storeArray ${dict[@]}
echo ${array[@]}

echo "Result in Descending order:"
descending_order ${array[@]}
echo ${array[@]}
