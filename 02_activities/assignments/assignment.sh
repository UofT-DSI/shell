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
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data

Answer1: mkdir data

# 2. Move the ./rawdata directory to ./data/raw (eg. move it into ./data and rename it to raw)

Answer2: mv rawdat data/raw

# 3. List the contents of the ./data/raw directory

Answer3: ls data/raw

# 4. Create the directory ./data/processed, 
#    then create the following sub-directories within it: server_logs, user_logs, and event_logs

Answer4: mkdir data/processed
         mkdir processed/server_logs processed/user_logs processed/event_logs
# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs

Answer5: cp raw/server_log*.log processed/server_logs

# 6. Repeat the above step for user logs and event logs

Answer6: cp raw/user_log*.log processed/user_logs
         cp raw/user_ipaddr*.log processed/user_logs
         cp raw/event_log*.log processed/event_logs

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs

Answer7: rm raw/user_ipaddr*.log
         rm processed/user_logs/user_ipaddr*.log

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed

Answer8: ls -R data/processed > data/inventory.txt
###########################################

echo "Project setup is complete!"
