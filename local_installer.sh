#!/bin/bash
read -p "Do you want to install aptman? (y/n): " answer

if [ "$answer" == "y" ]; then
        sudo cp ./apt /usr/bin
    if [ $? -eq 0 ]; then
        echo "File moved successfully to /usr/bin."
    else
        echo "Error: Unable to move file to /usr/bin."
    fi
else
    echo "Installation of aptman canceled."
fi

read -p "Delete installer? (y/n): " answer2

if [ "$answer2" == "y" ]; then
    rm ./apt
    rm "$0"
    echo "Installer removed. Exiting."
else
    echo "Remove "$(pwd)/apt" and "$(pwd)/$(basename "$0")" to remove the installer. Exiting."
fi
exit 0
