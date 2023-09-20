#!/bin/bash

# Check if a name was provided
if [ "$#" -ne 1 ] || [ -z "$1" ]; then
    echo "Usage: $0 <name>"
    echo "Provide a name for the main directory."
    exit 1
fi

# Get the directory where the script is located
SCRIPT_DIR="$(dirname "$0")"

# Name of the main directory
main_dir="$SCRIPT_DIR/lib/$1"

# Array of subdirectories to be created
directories=("presentation" "domain" "infrastructure" "application")

# Create the main directory
mkdir -p "$main_dir"

# Loop through each subdirectory
for dir in "${directories[@]}"; do
    # Create the subdirectory inside the main directory
    mkdir -p "$main_dir/$dir"
    # Touch a .gitkeep file inside the subdirectory
    touch "$main_dir/$dir/.gitkeep"
done


echo "$1 created..."