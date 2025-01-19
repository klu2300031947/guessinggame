#!/bin/bash

# Function to prompt the user for a guess
guess_number() {
    local correct_number=$(ls -1 | wc -l)
    local guess=0

    echo "Guess the number of files in the current directory:"

    while [[ $guess -ne $correct_number ]]
    do
        read guess
        if [[ $guess -lt $correct_number ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $correct_number ]]; then
            echo "Too high! Try again."
        fi
    done

    echo "Congratulations! You guessed the correct number of files: $correct_number"
}

# Call the function to start the game
guess_number
