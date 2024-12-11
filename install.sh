#!/bin/bash

# Function to check distribution type
detect_distro() {
    if command -v apt &> /dev/null; then
        echo "Debian-based"
        return 1
    elif command -v pacman &> /dev/null; then
        echo "Arch-based"
        return 2
    else
        echo "Unsupported Linux distribution."
        return 0
    fi
}

# Main script logic
run_setup() {
    distro_type=$1

    if [[ "$distro_type" == "1" ]]; then
        echo "Running Debian-based setup..."
        # Call the Debian setup script
        ./setup_debian.sh
    elif [[ "$distro_type" == "2" ]]; then
        echo "Running Arch-based setup..."
        # Call the Arch setup script
        ./setup_arch.sh
    else
        echo "Exiting: No compatible distribution detected."
        exit 1
    fi
}

# Detect the distribution
detect_distro
distro_type=$?

# Execute the appropriate script
run_setup $distro_type

