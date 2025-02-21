#!/bin/bash
echo "Enter a number:"
read n
a=1
sum=0
while [ $a -le $n ]
do
	sum=$((sum+a))
	a=$((a+1))
done
echo "sum is $sum"

