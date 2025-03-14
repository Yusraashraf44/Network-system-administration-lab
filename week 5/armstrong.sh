#!/bin/bash
echo "Enter a number: "
read num
original_num=$num
sum=0
len=${#num}
while [ $num -gt 0 ]; do
    digit=$((num % 10))
    sum=$((sum + digit ** len))
    num=$((num / 10))
done
if [ $sum -eq $original_num ]; then
    echo "$original_num is an Armstrong number."
else
    echo "$original_num is not an Armstrong number."
fi

