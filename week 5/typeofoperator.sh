#!/bin/bash
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2
echo "Enter the operator (+, -, *, /):"
read operator
case $operator in
    +)
        result=$((num1 + num2))
        ;;
    -)
        result=$((num1 - num2))
        ;;
    \*)
        result=$((num1 * num2))
        ;;
    /)
        if [ $num2 -ne 0 ]; then
            result=$((num1 / num2))
        else
            echo "Error: Division by zero is not allowed."
            exit 1
        fi
        ;;
    *)
        echo "Invalid operator!"
        exit 1
        ;;
esac
echo "Result: $result"

