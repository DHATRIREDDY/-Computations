#!/bin/bash
read -p "Enter a value:" a
read -p "Enter b value:" b
read -p "Enter c value:" c
operation1=$(( $a+($b*$c) ))
echo "The operation1 value is:"$operation1
