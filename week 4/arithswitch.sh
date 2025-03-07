#!/bin/bash


while true; do
    echo "Enter first number: "
    read num1

    echo "Enter second number: "
    read num2

    echo "Choose an operation:
    1. Add
    2. Subtract
    3. Multiply
    4. Divide
    5. Exit"

   
    read choice

    case $choice in
        1)
            result=$((num1 + num2))
            echo "Result: $num1 + $num2 = $result"
            ;;
        2)
            result=$((num1 - num2))
            echo "Result: $num1 - $num2 = $result"
            ;;
        3)
            result=$((num1 * num2))
            echo "Result: $num1 * $num2 = $result"
            ;;
        4)
            if [ $num2 -ne 0 ]; then
                result=$((num1 / num2))
                echo "Result: $num1 / $num2 = $result"
            else
                echo "Error: Division by zero is not allowed."
            fi
            ;;
        5)
            echo "Exiting the program."
            break
            ;;
        *)
            echo "Invalid choice, please enter a number between 1 and 5."
            ;;
    esac
done

