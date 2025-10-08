#!/bin/bash
set -e

############################################
# DSI CONSULTING INC. Project setup script #
############################################

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
# Assignment steps

# 1. Create a directory named data
mkdir data

# 2. Move the ./rawdata directory to ./data/raw
mv rawdata data/raw

# 3. List the contents of the ./data/raw directory
ls data/raw

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
mkdir -p data/processed/{server_logs,user_logs,event_logs}

# 5. Copy all server log files (files with "server" in the name AND a .log extension)
cp data/raw/*server*.log data/processed/server_logs/ 2>/dev/null || true

# 6. Repeat for user and event logs
cp data/raw/*user*.log data/processed/user_logs/ 2>/dev/null || true
cp data/raw/*event*.log data/processed/event_logs/ 2>/dev/null || true

# 7. Remove all files containing IP addresses ("ipaddr" in filename)
rm -f data/raw/*ipaddr* data/processed/user_logs/*ipaddr*

# 8. Create ./data/inventory.txt listing all files in subfolders of ./data/processed
find data/processed -type f > data/inventory.txt

###########################################

echo "Project setup is complete!"

