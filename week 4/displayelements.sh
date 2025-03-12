#!/bin/bash
echo "Enter no of elements in array: ";
read n;
declare -a arr
for ((i=0;i<n;i++))
do 
	echo "Enter element $((i+1)) of array: ";
	read arr[$i];
done
echo "Elements of the array are: "
for ((i=0;i<n;i++))
do 
	echo "${arr[$i]}";
done
