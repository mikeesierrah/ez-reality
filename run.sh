#!/bin/bash

# Update package list and upgrade installed packages
nohup sudo apt-get update 
nohup sudo apt-get upgrade -y
nohup sudo apt-get wget -y
# Download and run Xray installation script
nohup bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install

# Retrieve Xray configuration file
nohup wget -O /usr/local/etc/xray/config.json "https://github.com/mikeesierrah/ez-reality/raw/master/server.json"

# Run Xray with the specified configuration file
nohup xray run -c /usr/local/etc/xray/config.json
