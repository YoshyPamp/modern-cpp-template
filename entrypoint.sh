#!/bin/bash
set -e  # Exit immediately if a command fails

# Ensure the build directory exists
mkdir -p /app/build

# Ensure Conan detects the environment
conan profile detect --force
conan install . --output-folder=/app/build --build=missing

# Generate CMake files
cmake -G Ninja -S /app -B /app/build

# Build the application
ninja -C /app/build

# Run the application
exec /app/build/ModernCppTemplate
