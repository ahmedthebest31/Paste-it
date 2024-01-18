#!/bin/bash

# Check if xdotool is installed
if ! command -v xdotool &> /dev/null; then
    echo "Error: This script requires 'xdotool' to be installed. Please install it before running this script."
    exit 1
fi

# Check if xclip is installed
if ! command -v xclip &> /dev/null; then
    echo "Error: This script requires 'xclip' to be installed. Please install it before running this script."
    exit 1
fi

# Use xclip to copy clipboard content, tr to replace newlines with carriage returns, and xdotool to simulate typing
if ! xclip -selection clipboard -out | tr '\n' '\r' | xdotool selectwindow windowfocus type --clearmodifiers --delay 25 --window %@ --file -; then
    echo "Error: Unable to simulate typing. Please check if the active window supports text input."
    exit 1
fi

# echo "Typing simulation completed successfully."
