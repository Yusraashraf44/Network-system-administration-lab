#!/bin/bash
perform_operation() {
    num1=$1
    num2=$2
    operation=$3

    case $operation in
        1)
            result=$((num1 + num2))
            echo "Addition: $num1 + $num2 = $result"
            ;;
        2)
            result=$((num1 - num2))
            echo "Subtraction: $num1 - $num2 = $result"
            ;;
        3)
            result=$((num1 * num2))
            echo "Multiplication: $num1 * $num2 = $result"
            ;;
        4)
            if [ $num2 -eq 0 ]; then
                echo "Error: Division by zero is not allowed."
            else
                result=$((num1 / num2))
                echo "Division: $num1 / $num2 = $result"
            fi
            ;;
        *)
            echo "Invalid operation"
            ;;
    esac
}

echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read operation

perform_operation $num1 $num2 $operation

