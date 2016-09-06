#!/bin/bash
arg=($@) #Terminal arguments
var=$1; #Commands
i=0

#Sum
if [ "$var" = "S" ]; then
	echo "The letter is S, for sum"
	for sum in "${arg[@]:1}"
	do
		i=$((i+sum))
		sum=$i

	done
	echo "The sum is $sum"
fi

#Product
if [ "$var" = "P" ]; then
	echo "The letter is P, for product"
	i=$2
	for prod in "${arg[@]:2}"
	do
		i=$((i*prod))
		prod=$i

	done
	echo "The product is $prod"
fi
#Maximum
if [ "$var" = "M" ]; then
	echo "The letter is M, for maximum"
	i=$2
	for max in "${arg[@]:1}"
	do
	
		if [ "$max" -gt "$i" ]; then
			i=$max
		fi
	done
	echo "The maximum is $i"
fi

#Minimum
if [ "$var" = "m" ]; then
	echo "The letter is M, for maximum"
	i=$2
	for min in "${arg[@]:1}"
	do
	
		if [ "$min" -lt "$i" ]; then
			i=$min
		fi
	done
	echo "The minimum is $i"
fi

sleep 3000