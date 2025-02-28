#!/bin/bash
echo "Enter a number:"
read num
sum=0
for((i=0; i<=num ; i++));
do 
	sum=$((sum+i))
done
echo "Sum of first $num numbers is $sum"
