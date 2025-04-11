#!/bin/bash
set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################

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

# 2. Move the ./rawdata directory to ./data/raw
mkdir -p data/raw
mv rawdata/* data/raw/
rmdir rawdata  # Optional: clean up empty rawdata folder

# 3. List the contents of the ./data/raw directory
ls ./data/raw

# 4. In ./data/processed, create the following directories
mkdir -p ./data/processed/server_logs ./data/processed/user_logs ./data/processed/event_logs

# 5. Copy server log files
cp ./data/raw/*server*.log ./data/processed/server_logs/

# 6. Copy user and event log files
cp ./data/raw/*user*.log ./data/processed/user_logs/
cp ./data/raw/*event*.log ./data/processed/event_logs/

# 7. Remove files with IP addresses
rm -f ./data/raw/*ipaddr*
rm -f ./data/processed/user_logs/*ipaddr*

# 8. Create inventory list
find ./data/processed -type f > ./data/inventory.txt

###########################################

echo "Project setup is complete!"
# Triggering Part 2
