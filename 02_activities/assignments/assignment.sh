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
     mkdir data
# 2. Move the ./rawdata directory to ./data/raw
     # I have unzip  rawdata(compressed) to unzip rawdata in assignments files
     mv ./rawdata ./data/raw

# 3. List the contents of the ./data/raw directory
     ls ./data/raw
     # 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
     
     mkdir -p data/processed/server_logs  
     mkdir -p data/processed/user_logs 
     mkdir -p data/processed/event_logs
     
# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
      cd ..
      cd raw
      cd rawdata
      cp ./*server*  ./processed/server_logs
      cp ./*server*   ./processed/server_logs

# 6. Repeat the above step for user logs and event logs
     cp ./*server*  ./processed/user_logs
     cp ./*server*  ./processed/event_logs
# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
     cd ..
     cd ..
     cd raw
     rm ./*ipaddr*
     cd ..
     cd ..
     cd processed
     rm ./*ipaddr*

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed

  code inventory.txt
  ls > inventory.txt
###########################################

echo "Project setup is complete!"
