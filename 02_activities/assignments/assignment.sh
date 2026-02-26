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
zhuzhiyue@Zhus-MacBook-Air ~ % cd ~
zhuzhiyue@Zhus-MacBook-Air ~ % git clone https://github.com/celiazhu-uoft/shell.git  
zhuzhiyue@Zhus-MacBook-Air ~ % git switch -c assignment
zhuzhiyue@Zhus-MacBook-Air ~ % cd Desktop
zhuzhiyue@Zhus-MacBook-Air Desktop % unzip rawdata.zip
zhuzhiyue@Zhus-MacBook-Air Desktop % mkdir data

# 2. Move the ./rawdata directory to ./data/raw (eg. move it into ./data and rename it to raw)
zhuzhiyue@Zhus-MacBook-Air Desktop % mv ./rawdata ./data/raw

# 3. List the contents of the ./data/raw directory
zhuzhiyue@Zhus-MacBook-Air Desktop % ls ./data/raw

# 4. Create the directory ./data/processed, 
#    then create the following sub-directories within it: server_logs, user_logs, and event_logs
zhuzhiyue@Zhus-MacBook-Air Desktop % mkdir ./data/processed
zhuzhiyue@Zhus-MacBook-Air Desktop % cd data
zhuzhiyue@Zhus-MacBook-Air data % cd processed
zhuzhiyue@Zhus-MacBook-Air processed % mkdir server_logs user_logs event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
zhuzhiyue@Zhus-MacBook-Air processed % cd ..
zhuzhiyue@Zhus-MacBook-Air data % cd ..
zhuzhiyue@Zhus-MacBook-Air Desktop % cp ./data/raw/*server*.log ./data/processed/server_logs/

# 6. Repeat the above step for user logs and event logs
zhuzhiyue@Zhus-MacBook-Air Desktop % cp ./data/raw/*user*.log ./data/processed/user_logs/
zhuzhiyue@Zhus-MacBook-Air Desktop % cp ./data/raw/*event*.log ./data/processed/event_logs/

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
zhuzhiyue@Zhus-MacBook-Air Desktop % rm ./data/raw/*ipaddr* ./data/processed/user_logs/*ipaddr*

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
zhuzhiyue@Zhus-MacBook-Air Desktop % touch ./data/inventory.txt
zhuzhiyue@Zhus-MacBook-Air Desktop % ls -p ./data/processed/*/ | grep -v / > ./data/inventory.txt

###########################################

echo "Project setup is complete!"
zhuzhiyue@Zhus-MacBook-Air Desktop % echo "Project setup is complete"
