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
echo "# Project Name: DSI Consulting Inc." > README.md
touch analysis/main.py

# download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip -q rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data

mkdir -p ./data # create data directory
ls -ld ./ data

# 2. Move the ./rawdata directory to ./data/raw

mv ./rawdata ./data/raw
# check
ls -ld ./data/raw && ls -1 ./data/raw | head

# 3. List the contents of the ./data/raw directory

ls -lah ./data/raw

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs

mkdir -p ./data/processed/{server_logs,user_logs,event_logs}
# check
ls -lah ./data/processed


# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
# dry-run preview (what will be copied)

find ./data/raw -maxdepth 1 -type f -iname '*server*.log' -print

# copy
find ./data/raw -maxdepth 1 -type f -iname '*server*.log' -exec cp -t ./data/processed/server_logs {} +
# check
ls -1 ./data/processed/server_logs

# 6. Repeat the above step for user logs and event logs
# user logs
find ./data/raw -maxdepth 1 -type f -iname '*user*.log' -exec cp -t ./data/processed/user_logs {} +
ls -1 ./data/processed/user_logs

# event logs
find ./data/raw -maxdepth 1 -type f -iname '*event*.log' -exec cp -t ./data/processed/event_logs {} +
ls -1 ./data/processed/event_logs

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
<<<<<<< HEAD
# dry-run preview (see what would be deleted)
find ./data/raw ./data/processed/user_logs -maxdepth 1 -type f -iname '*ipaddr*' -print

# delete
find ./data/raw ./data/processed/user_logs -maxdepth 1 -type f -iname '*ipaddr*' -delete

# verify they’re gone
find ./data/raw ./data/processed/user_logs -maxdepth 1 -type f -iname '*ipaddr*' -print
=======
rf -rf ./data
>>>>>>> ea20676d33161a6f4d0fcd3c4f7aa5360f0f4309

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
find ./data/processed -type f | sort > ./data/inventory.txt
# check
wc -l ./data/inventory.txt
head ./data/inventory.txt


###########################################

echo "Project setup is complete!"
