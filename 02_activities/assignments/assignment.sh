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
cd data
mv ./rawdata ./raw

# 3. List the contents of the ./data/raw directory

cd raw
ls

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs

cd data
mkdir processed
mv ./processed ./data
cd processed
mkdir server_logs 
mkdir user_logs 
mkdir event_logs
mv ./server_logs ./data/processed
mv ./user_logs ./data/processed
mv ./event_logs ./data/processed

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs

cd ./data/raw
cp ./data/raw/*server*_.log/* ./data/processed/server_logs

# 6. Repeat the above step for user logs and event logs

cd ./data/raw
cp ./data/raw/*user*_.log/* ./data/processed/server_logs

cd ./data/raw
cp ./data/raw/*event*_.log/* ./data/processed/server_logs

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs

cd ./data/raw
rm ./data/raw/*ipadder* 
cd ./data/processed/user_logs
rm ./data/processed//user_logs/*ipadder*

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed

cd ./data
touch inventory.txt
mv ./inventory.txt ./data 
cd ./data/processed
cp .data/processed/* ./inventory.txt
cd .inventory.text
cat ./inventory.txt

###########################################

#commit changes#
git commit assignment.sh -m "corrections made to assignment 1 and resubmitted on april 20, 2025"

#pull updates from coworkers#
git pull http://github.com/UofT-DSI/shell coworker-changes --no-rebase

#check for conflicts#
git status

#once conflicts are resolved, commit the merge#
git commit

#double check by re-testing script# 
bash assignment.sh

#commit final changes in my assignment branch#
git status

echo "Project setup is complete!"
