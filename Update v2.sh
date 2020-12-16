#!/usr/bin/env bash

while true; do
    read -p "Do you want to install updates? [y/N]: " yn
    case $yn in
        [Yy]* ) echo "Starting update process..."
        sudo yum update; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you wish to remove obsolete packages? [y/N] (NOT RECOMMENDED): " yn
    case $yn in
        [Yy]* ) echo "Starting upgrade process..."
        sudo yum upgrade;
        echo "Rebooting in 30 seconds..."
        sudo sleep 30 ; reboot; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

exit 0
