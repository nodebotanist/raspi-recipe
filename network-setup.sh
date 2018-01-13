#!/bin/bash

# Enable SSH
sudo systemctl enable ssh

# Enable Serial Login
sudo echo "# Enable UART login" >> /boot/config.txt
sudo echo "enable_uart=1" >> /boot/config.txt
sudo echo "" >> /boot/config.txt

# Add network to /etc/wpa_supplicant/wpa_supplicant.conf

sudo echo "" >> /etc/wpa_supplicant/wpa_supplicant.conf
sudo echo "network={" >> /etc/wpa_supplicant/wpa_supplicant.conf
sudo echo "    ssid=\"NETWORK_ID\"" >> /etc/wpa_supplicant/wpa_supplicant.conf
sudo echo "    psk=\"password\"" >> /etc/wpa_supplicant/wpa_supplicant.conf
sudo echo "}" >> /etc/wpa_supplicant/wpa_supplicant.conf
sudo echo "" >> /etc/wpa_supplicant/wpa_supplicant.conf