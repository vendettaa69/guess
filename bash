#!/bin/bash

# Function to ask the user to guess the number of files in the current directory
guessing_game() {
    local correct_answer=$(ls -1 | wc -l) # Get the number of files in the current directory
    local user_guess=0

    echo "Welcome to the Guessing Game!"
    echo "Can you guess how many files are in the current directory?"

    # Loop until the user guesses the correct number
    while [[ $user_guess -ne $correct_answer ]]
    do
        echo "Enter your guess: "
        read user_guess

        if [[ $user_guess -lt $correct_answer ]]
        then
            echo "Your guess is too low. Try again!"
        elif [[ $user_guess -gt $correct_answer ]]
        then
            echo "Your guess is too high. Try again!"
        fi
    done

    echo "Congratulations! You guessed the correct number of files: $correct_answer."
}

# Start the game
guessing_game
