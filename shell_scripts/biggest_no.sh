#!/bin/bash

if [ $# -ne 3 ] 
then

echo "$0: number1 number2 number3 are not given" >&2 >&1

fi

if [ $1 -gt $2 ] && [ $1 -gt $3 ] 
then
	echo "$1 is the biggest number"

elif [ $2 -gt $1 ] && [ $2 -gt $3 ] 
then
echo "$2 is the biggest number" 

elif [ $3 -gt $1 ] && [ $3 -gt $2 ] 
then
echo "$3 is the biggest number"

elif [ $1 -eq $2 ] && [ $1 -eq $3 ] && [ $2 -eq $3 ] 
then

echo "All the three numbers are equal" 

else
echo "I can not figure out which number is bigger"

fi
