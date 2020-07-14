#!/bin/bash
declare -A dict

function storeArray(){
	array=("$@")
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

