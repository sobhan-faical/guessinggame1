#!/usr/bin/env bash

# Guessing Game - The Unix Workbench
# Guess how many regular files are in this directory.

count_files() {
    find . -maxdepth 1 -type f | wc -l
}

correct_count=$(count_files)

echo "===================================="
echo "        GUESSING GAME"
echo "===================================="
echo "How many files are in this directory?"

while true; do
    read -r -p "Enter your guess: " guess || { echo; exit 1; }

    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid whole number."
        continue
    fi

    if (( 10#$guess < correct_count )); then
        echo "Your guess is too low. Try again!"
    elif (( 10#$guess > correct_count )); then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed correctly!"
        echo "There are $correct_count files in this directory."
        break
    fi
done

echo "Thanks for playing!"
