#!/bin/bash
set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################
# This script creates standard analysis and output directories
# for a new project. It also creates a README file with the
# project name and a brief description of the project.
# Then it unzips the raw data provided by the client.

if [ -d newproject ]; then
  echo "Directory 'newproject' already exists. Please remove it before running this script."
  exit 1
fi
mkdir newproject
cd newproject

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data
mkdir data
# 2. Move the ./rawdata directory to ./data/raw
mv rawdata data/raw
# 3. List the contents of the ./data/raw directory
ls data/raw
# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
cd data
mkdir processed
cd processed
mkdir server_logs
mkdir user_logs
mkdir event_logs
# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
cd ..
cp raw/*server*.log processed/server_logs
# 6. Repeat the above step for user logs and event logs
cp raw/*user*.log processed/user_logs
cp raw/*event*.log processed/event_logs
# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
rm raw/*ipaddr*
rm processed/user_logs/*ipaddr*
# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
touch inventory.txt
find processed > inventory.txt
###########################################

echo "Project setup is complete!"
