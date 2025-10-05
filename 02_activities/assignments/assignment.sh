#!/bin/bash
set -x
#Evan Chan's attempt
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
mv ./rawdata ./data/raw
# 3. List the contents of the ./data/raw directory
ls ./data/raw
# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
mkdir ./data/processed
cd ./data/processed
mkdir server_logs user_logs event_logs
# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
cp ../raw/server*.log server_logs/
#note to self: since we cd'd into processed, we need .. to go back out in the tree or the parent where as ./ indicates the relative 
# 6. Repeat the above step for user logs and event logs
cp ../raw/user*.log user_logs/
cp ../raw/event*.log event_logs/
# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
rm ../raw/user_ipaddr*
rm ../raw/ipaddr*
rm user_logs/user_ipaddr*
# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
touch ../inventory.txt
find . -type f  >  ../inventory.txt
#technically, mv is possible and the question does not specify whether we mv or cp

###########################################

echo "Project setup is complete!"
