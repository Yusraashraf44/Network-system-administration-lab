#!/bin/bash
a=0
b=1
sum=0
limit=10
for (( i=1; i<=limit; i++ ))
do
    echo -n "$a "
    sum=$((sum + a))
    temp=$a
    a=$b
    b=$((temp + b))
done
echo
echo "Sum of Fibonacci series: $sum"

