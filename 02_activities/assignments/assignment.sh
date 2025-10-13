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
mkdir -p -- "data"

# 2. Move the ./rawdata directory to ./data/raw
mv -v -- "rawdata" "data/raw"

# 3. List the contents of the ./data/raw directory
ls -1 -- "data/raw"

# 4. In ./data/processed, create: server_logs, user_logs, event_logs
mkdir -p -- "data/processed/server_logs" "data/processed/user_logs" "data/processed/event_logs"

# 5. Copy *server*.log from ./data/raw → ./data/processed/server_logs
find "data/raw" -type f -name '*server*.log' -exec cp -t "data/processed/server_logs" -- {} +

# 6. Repeat for user logs and event logs
find "data/raw" -type f -name '*user*.log'  -exec cp -t "data/processed/user_logs"  -- {} +
find "data/raw" -type f -name '*event*.log' -exec cp -t "data/processed/event_logs" -- {} +

# 7. Remove files containing "ipaddr" from ./data/raw and ./data/processed/user_logs
find "data/raw"                 -type f -name '*ipaddr*' -print -delete
find "data/processed/user_logs" -type f -name '*ipaddr*' -print -delete

# 8. Create ./data/inventory.txt with all files under ./data/processed
find "data/processed" -type f | sort > "data/inventory.txt"
###########################################
echo "Project setup is complete!"
