#!/bin/bash
fibonacci() {
    n=$1
    a=0
    b=1
    echo "Fibonacci Series up to $n terms:"
    
    for (( i=0; i<n; i++ ))
    do
        echo -n "$a "
        
        # Update the Fibonacci numbers
        fn=$((a + b))
        a=$b
        b=$fn
    done
    echo  # New line after the series
}

echo "Enter the number of terms for Fibonacci series:"
read terms
fibonacci $terms

