#!/bin/bash

# This script calculates simple interest given principal, rate, and time.

# Prompt the user for input
echo "Enter the principal amount:"
read principal

echo "Enter the annual rate of interest:"
read rate

echo "Enter the time period in years:"
read time

# Validate input to ensure they are numbers
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$rate" =~ ^[0-9]+(\.[0-9]+)?$ ]] || ! [[ "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter numbers only."
    exit 1
fi

# Calculate simple interest using bc for floating point arithmetic
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the result
echo "The simple interest is: $interest"
