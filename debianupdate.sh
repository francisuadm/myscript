#!/bin/bash

# Update System
echo "Updating System..."
apt-get update -y
apt-get upgrade -y

# Install Apps
echo "Installing Apps..."
# Add your apps in the following lines
sudo apt-get install -y sudo curl wget unzip zip
# sudo apt-get install -y app2

# Configure GRUB
echo "Configuring GRUB..."
sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="consoleblank=300"/g' /etc/default/grub
sudo update-grub

# Configure logind.conf
echo "Configuring logind.conf..."
sudo sed -i 's/#HandleLidSwitch=ignore/HandleLidSwitch=ignore/g' /etc/systemd/logind.conf
sudo sed -i 's/#HandleLidSwitchDocked=ignore/HandleLidSwitchDocked=ignore/g' /etc/systemd/logind.conf

echo "Script execution completed."
