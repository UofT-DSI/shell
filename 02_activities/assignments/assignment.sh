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
unzip rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data

mkdir data
## I had to unzip the raw data myself, it was not automatically unzipped. 
# 2. Move the ./rawdata directory to ./data/raw
## Since there is no sub-directory in data called raw, first a sub-directory called raw shall be made in data directory

mkdir data/raw
mv rawdata data/raw

# 3. List the contents of the ./data/raw directory
ls data/raw

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
## Since there is no sub-directory in data called processed, first a sub-directory called processed shall be made in data directory
mkdir data/processed

mkdir data/processed/server_logs
mkdir data/processed/user_logs
mkdir data/processed/event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
## log files (files with "server" in the name AND a .log extension) are inside sub-directory of data/raw so I can copy these files by using data/raw/rawdata path and not data/raw only

cp data/raw/rawdata/*server*.log data/processed/server_logs


# 6. Repeat the above step for user logs and event logs
### Same as above process. 

cp data/raw/rawdata/*server*.log data/processed/user_logs

cp data/raw/rawdata/*server*.log data/processed/event_logs


# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
## In order to see inside data/raw, you will have to open sub-directory of data/raw which is data/raw/rawdata

rm -i data/raw/rawdata/*ipaddr*

rm -i data/processed/user_logs/*ipaddr*


# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed

touch data/inventory.txt

## I searched that using > will direct the output of any command in file - So combining ls and <, I can list and odirect the results inside my inventory.txt file.
### Also adding -1, I can list the folders on a new line 

ls -1 data/processed > inventory.txt

## cat command will confirm that all subforlders of data/processed are listed in inventory.txt

cat inventory.txt 
###########################################

echo "Project setup is complete!"
