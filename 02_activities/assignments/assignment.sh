#!/bin/bash
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
unzip -q rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data

mkdir data

# 2. Move the ./rawdata directory to ./data/raw

cd data
mkdir raw
mv ../rawdata ./raw

# 3. List the contents of the ./data/raw directory

cd raw
cd rawdata
ls

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs

mkdir processed
ls
cd processed
mkdir server_logs user_logs event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs

cd ..
cd ..
cp data/raw/rawdata/*server*.log data/processed/server_logs/
cd processed/server_logs
ls

# 6. Repeat the above step for user logs and event logs

cd ..
cd ..
cd ..
cp data/raw/rawdata/*user*.log data/processed/user_logs/
cd data/processed/user_logs
ls
cd ..
cd ..
cd ..
cp data/raw/rawdata/*event*.log data/processed/event_logs/
cd data/processed/event_logs
ls

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs

cd ..
cd ..
cd ..
cd data/raw/rawdata
rm *ipaddr*
cd ..
cd ..
cd ..
rm ./data/processed/user_logs/ *ipaddr*
cd data/processed/user_logs
ls 
cd ..
cd event_logs
cd ..
cd user_logs
cd ..
cd server_logs

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed

cd ..
cd ..
cd processed/
code inventory.txt

###########################################

echo "Project setup is complete!"
