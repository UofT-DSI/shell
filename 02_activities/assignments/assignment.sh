#!/bin/bash
set -x

# I've created a dummy commit after enabling actions/auto-grader. This is the dummy comment.

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

# 2. Move the ./rawdata directory to ./data/raw
mkdir raw
cd ..
mv rawdata ./data/raw

# 3. List the contents of the ./data/raw directory
cd ./data/raw
ls

# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
cd ..
mkdir processed
cd processed
mkdir server_logs user_logs event_logs

# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
cd ..
cp raw/rawdata/server*.log processed/server_logs # I believe there're not .log files in raw but in a subfolder rawdata, because rawdata files were all moved there.

# 6. Repeat the above step for user logs and event logs
cp raw/rawdata/user*.log processed/user_logs # I believe there're not .log files in raw but in a subfolder rawdata, because rawdata files were all moved there.
cp raw/rawdata/event*.log processed/event_logs # I believe there're not .log files in raw but in a subfolder rawdata, because rawdata files were all moved there.

# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
rm -v raw/rawdata/*ipaddr*
rm -v processed/user_logs/*ipaddr*

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed
cd ..
cd data
touch inventory.txt
cd processed
ls

cd user_logs
ls >> inventory.txt

cd processed
cd event_logs
ls >> inventory.txt


cd processed
cd server_logs
ls >> inventory.txt

cat inventory.txt

###########################################

echo "Project setup is complete!"

git commit assignment.sh -m "Assignment completed"

