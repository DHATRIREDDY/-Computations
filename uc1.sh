#!/bin/bash
read -p "Enter a value:" a
read -p "Enter b value:" b
read -p "Enter c value:" c
operation4=$(( ($a%$b)+$c ))
echo "The operation4 value is:"$operation4

