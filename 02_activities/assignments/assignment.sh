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

# 2. Move the ./rawdata directory to ./data/raw

# 3. List the contents of the ./data/raw directory

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs

# 6. Repeat the above step for user logs and event logs

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed



###########################################

echo "Project setup is complete!"
#!/bin/bash
set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################
# This script creates standard analysis and output directories
# for a new project. It also creates a README file with the
# project name and a brief description of the project.
# Then it unzips the raw data provided by the client.

# Create analysis and output directories, and README file
mkdir -p analysis output data
touch README.md
touch analysis/main.py

# Download client data
curl -Lo rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip
unzip rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data (already created)

# 2. Move the ./rawdata directory to ./data/raw
mv rawdata data/raw

# 3. List the contents of the ./data/raw directory
echo "Listing contents of ./data/raw:"
ls data/raw

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
mkdir -p data/processed/server_logs data/processed/user_logs data/processed/event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
find data/raw -type f -iname '*server*.log' -exec cp {} data/processed/server_logs/ \;

# 6. Repeat the above step for user logs and event logs
find data/raw -type f -iname '*user*.log' -exec cp {} data/processed/user_logs/ \;
find data/raw -type f -iname '*event*.log' -exec cp {} data/processed/event_logs/ \;

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
find data/raw -type f -iname '*ipaddr*' -exec rm -f {} \;
find data/processed/user_logs -type f -iname '*ipaddr*' -exec rm -f {} \;

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
find data/processed -type f > data/inventory.txt

###########################################

echo "Project setup is complete!" 
chmod +x setup_project.sh
./setup_project.sh
#!/bin/bash

# Step 1: Create client directories
mkdir -p data/raw data/processed data/reports

# Step 2: Move raw data files to the raw directory
mv *.csv data/raw/

# Step 3: Create a README file with client details
echo "Client Data Directory Initialized on $(date)" > README.md

# Step 4: Confirm script execution completion
echo "Data ingest script executed successfully."
