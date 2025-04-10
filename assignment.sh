#!/bin/bash
# Re-triggering autograder

set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################
# This script creates standard analysis and output directories
# for a new project. It also creates a README file with the
# project name and a brief description of the project.
# Then it unzips the raw data provided by the client.

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip###########################################
# Completete assignment is  here

## 1. Create a directory named data
mkdir data

# 2. Move the ./rawdata directory to ./data/raw
mv rawdata ./data/raw

# 3. List the contents of the ./data/raw directory
ls ./data/raw

# 4. In ./data/processed, create the following directories
mkdir -p ./data/processed/{server_logs,user_logs,event_logs}

# 5. Copy all server log files to ./data/processed/server_logs
cp ./data/raw/*server*.log ./data/processed/server_logs/

# 6. Copy user and event log files
cp ./data/raw/*user*.log ./data/processed/user_logs/
cp ./data/raw/*event*.log ./data/processed/event_logs/

# 7. Remove files with "ipaddr" in the filename from specified locations
rm -f ./data/raw/*ipaddr*
rm -f ./data/processed/user_logs/*ipaddr*

# 8. Create inventory.txt listing all files in ./data/processed subfolders
find ./data/processed -type f > ./data/inventory.txt

###########################################

echo "Project setup is complete!"
