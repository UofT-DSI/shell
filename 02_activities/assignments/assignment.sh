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

# remove everything from the current directory 
# mentioned during office hours
rm -rf *

# download client data
# downloads data from Github
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
# unzips data
# made change here from class office hours
unzip -0 -q rawdata.zip

###########################################
# Complete assignment here
# Reference guide: https://github.com/UofT-DSI/shell/blob/main/01_materials/bash_quick_reference.md

# $ before each command?

# 1. Create a directory named data
echo "Creating Directory"
mkdir data

# 2. Move the ./rawdata directory to ./data/raw
# 2a. Create the new directory
mkdir "./data/raw"
# 2b. Moving the directory so it can be moved
cd "./data/raw"
echo "moving directory"
mv "./rawdata/" "./data/raw"
# 3. List the contents of the ./data/raw directory
ls "data/raw"

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
# 4a create a new directory because this is a new folder; And it'll act as a parent directory / folder
echo "Creating Directory"
mkdir "./data/processed"
# 4b. navigate to the new directory
# cd "./data/processed"
# 4c. create the following directories
# mkdir "server_logs" "user_logs" "event_logs"

# 4d. recreate the folders again
mkdir data/processed/server_logs data/processed/user_logs data/processed/event_logs



# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
# 5a. Change directory
# cd ..
# pwd
# 5b. Copy data
echo "Copying data"
cp data/raw/rawdata/*server* "data/processed/server_logs"
cp data/raw/rawdata/*.log "data/processed/server_logs"


# 6. Repeat the above step for user logs and event logs
# Assuming we are moving the contents of the user and event log folders > HW note
# 6a. move contents - meaning not copying
mv raw/rawdata/*server* "processed/server_logs"

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
# 7a. remove files
rm raw/rawdata/ipaddr*
rm -f processed/user_logs/ipaddr*

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
# 8a. create file
touch data/inventory.txt

# 8b. show all files in the subfolders 
ls -R

# 8c. add all the data into the inventory text file
ls -R >> data/inventory.txt

###########################################g

echo "Project setup is complete!"
