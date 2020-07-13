#!/bin/bash
read -p "Enter a value:" a
read -p "Enter b value:" b
read -p "Enter c value:" c
operation3=$(( $c+($a/$b) ))
echo "The operation3  value is:"$operation3
operation1=$(( $a+($b*$c) ))
echo "The operation1 value is:"$operation1
operation2=$(( ($a*$b)+$c ))
echo "The operation2 value is:"$operation2


