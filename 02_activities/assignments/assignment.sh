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
  echo "Recreating the newproject directory"
  rm -rf newproject
fi
mkdir newproject
cd newproject

mkdir analysis output
touch README.md
echo "# Project Name: DSI Consulting Inc." > README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data
mkdir data

# 2. Move the ./rawdata directory to ./data/raw (eg. move it into ./data and rename it to raw)
mv rawdata data/raw

# 3. List the contents of the ./data/raw directory
ls data/raw

# 4. Create the directory ./data/processed, 
#    then create the following sub-directories within it: server_logs, user_logs, and event_logs
mkdir data/processed
mkdir data/processed/server_logs data/processed/user_logs data/processed/event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
cp data/raw/server_log_* data/processed/server_logs

# 6. Repeat the above step for user logs and event logs
cp data/raw/user_* data/processed/user_logs 
cp data/raw/event_log_* data/processed/event_logs

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
#remove all files with "ipaddr" from raw directory
rm -i data/raw/*.txt data/raw/user_ipaddr_*

#remove all files with "ipaddr" from user_logs directory
rm  data/processed/user_logs/user_ipaddr_*


# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
ls data/processed/user_logs >inventory.txt
ls data/processed/server_logs >>inventory.txt
ls data/processed/event_logs >>inventory.txt

###########################################

echo "Project setup is complete!"
