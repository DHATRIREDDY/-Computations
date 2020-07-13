#!/bin/bash
read -p "Enter a value:" a
read -p "Enter b value:" b
read -p "Enter c value:" c
operation3=$(( $c+($a/$b) ))
echo "The operation3  value is:"$operation3

