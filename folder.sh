#!/bin/bash

# Function to create a directory if it doesn't already exist and add a description file
create_directory() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created directory: $1"
        create_description_file "$1" "$2"
    else
        echo "Directory already exists: $1"
        create_description_file "$1" "$2"
    fi
}

# Function to create a description file within the directory
create_description_file() {
    local dir_path=$1
    local description=$2
    echo "$description" > "$dir_path/description.txt"
    echo "Created description file in: $dir_path"
}

# Base directory for the project
BASE_DIR=${1:-.}  # Default to current directory if no argument is provided

# List of directories to create with their descriptions
declare -A DIRECTORIES
DIRECTORIES=(
    ["$BASE_DIR/lib/src/common_widgets"]="Directory for common reusable widgets"
    ["$BASE_DIR/lib/src/constants"]="Directory for constant values used across the project"
    ["$BASE_DIR/lib/src/exceptions"]="Directory for custom exception classes"
    ["$BASE_DIR/lib/src/features"]="Directory for feature-specific code"
    ["$BASE_DIR/lib/src/features/authentication/models"]="Directory for MVC model classes"
    ["$BASE_DIR/lib/src/features/authentication/views"]="Directory for MVC view classes"
    ["$BASE_DIR/lib/src/features/authentication/controllers"]="Directory for MVC controller classes"
    ["$BASE_DIR/lib/src/localization"]="Directory for localization files"
    ["$BASE_DIR/lib/src/routing"]="Directory for routing and navigation-related code"
    ["$BASE_DIR/lib/src/utils"]="Directory for utility functions and helpers"
    ["$BASE_DIR/assets/images"]="Directory for image assets"
    ["$BASE_DIR/assets/icons"]="Directory for icon assets"
    ["$BASE_DIR/assets/fonts"]="Directory for font assets"
    ["$BASE_DIR/assets/videos"]="Directory for videos assets"
    ["$BASE_DIR/packages"]="Directory for packages"
    ["$BASE_DIR/test"]="Directory for test files"
)

# Create each directory in the list with their descriptions
for DIR in "${!DIRECTORIES[@]}"; do
    create_directory "$DIR" "${DIRECTORIES[$DIR]}"
done

echo "All directories and description files have been created successfully."
