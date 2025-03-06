#!/bin/bash

is_prime() {
    num=$1
    if [ $num -le 1 ]; then
        return 1  
    fi 
    for (( i=2; i<=$((num / 2)); i++ ))
    do
        if (( num % i == 0 )); then
            return 1  
        fi
    done

    return 0  
}

echo "Enter the upper limit to find prime numbers:"
read limit

echo "Prime numbers up to $limit are:"
for (( num=2; num<=limit; num++ ))
do
    if is_prime $num; then
        echo -n "$num "
    fi
done
echo

