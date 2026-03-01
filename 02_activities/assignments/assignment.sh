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
pwd # check the current directory and make sure it's the 'newproject' directory 
mkdir data # make a directory named 'data'

# 2. Move the ./rawdata directory to ./data/raw (eg. move it into ./data and rename it to raw)
mv rawdata data # move 'rawdata' directory into 'data' directory
cd data # make 'data' the current directory in the terminal
mv rawdata raw # rename 'rawdata' directory into 'raw' (the folder named 'raw' did not exist before this command)

# 3. List the contents of the ./data/raw directory
cd raw # make 'raw' the current directory in the terminal
pwd # check the current directory and make sure it's the 'raw' directory
ls -la # list all the files and folders in the 'raw' directory (including the hidden files)

# 4. Create the directory ./data/processed, 
#    then create the following sub-directories within it: server_logs, user_logs, and event_logs
cd .. # go back up to the 'data' directory
pwd # check the current directory and make sure it's the 'data' directory
mkdir processed # create a new directory named 'processed' inside 'data'
cd processed # make 'processed' the current directory in the terminal
mkdir server_logs user_logs event_logs  # create three sub-directories inside 'processed'

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
cd .. # go back up to the 'data' directory
pwd # check the current directory and make sure it's the 'data' directory
cp ./raw/*server*.log ./processed/server_logs/ # copy all files with "server" in the name and a .log extension from 'raw' to 'server_logs'

# 6. Repeat the above step for user logs and event logs
cp ./raw/*user*.log ./processed/user_logs/ # copy all files with "user" in the name and a .log extension from 'raw' to 'user_logs'
cp ./raw/*event*.log ./processed/event_logs/ # copy all files with "event" in the name and a .log extension from 'raw' to 'event_logs'

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
rm ./raw/*ipaddr* ./processed/user_logs/*ipaddr* # delete all files with "ipaddr" in the name from both 'raw' and 'user_logs'

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
touch inventory.txt # create an empty file named 'inventory.txt' in the 'data' directory
find ./processed -type f > ./inventory.txt  # find all files inside 'processed' and its sub-directories, and write the list to 'inventory.txt'

###########################################

echo "Project setup is complete!"
