#!/bin/bash

# Update package list and upgrade installed packages
sudo apt-get update && sudo apt-get upgrade -y

# Download and run Xray installation script
bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install

# Retrieve Xray configuration file
wget -O /usr/local/etc/xray/config.json "https://github.com/mikeesierrah/ez-reality/raw/master/server.json"

# Run Xray with the specified configuration file
nohup xray run /usr/local/etc/xray/config.json
