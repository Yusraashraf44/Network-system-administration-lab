#!/bin/bash
echo "Enter first number:"
read a
echo "Enter second number:"
read b
sum=`expr $a + $b`
echo "sum:$sum"
