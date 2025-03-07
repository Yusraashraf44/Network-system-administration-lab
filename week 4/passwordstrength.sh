#!/bin/bash
validate_password() {
    password=$1

   
    if [ ${#password} -lt 8 ]; then
        echo "Password must be at least 8 characters long."
        return 1
    fi

   
    if ! [[ "$password" =~ [a-z] ]]; then
        echo "Password must contain at least one lowercase letter."
        return 1
    fi

 
    if ! [[ "$password" =~ [A-Z] ]]; then
        echo "Password must contain at least one uppercase letter."
        return 1
    fi
    if ! [[ "$password" =~ [0-9] ]]; then
        echo "Password must contain at least one digit."
        return 1
    fi

 
    if ! [[ "$password" =~ [[:punct:]] ]]; then
        echo "Password must contain at least one special character (e.g., !, @, #, $, etc.)."
        return 1
    fi

    echo "Password is strong!"
}

echo "Enter a password to validate its strength:"
read -s password  # -s flag hides the password input

validate_password "$password"

