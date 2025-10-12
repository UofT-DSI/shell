#!/bin/bash
set -x
############################################
# DSI CONSULTING INC. Project setup script #
############################################

# [coworker] sanity checks for required tools
if ! command -v curl >/dev/null 2>&1; then
  echo "ERROR: curl is required." >&2
  exit 1
fi
if ! command -v unzip >/dev/null 2>&1; then
  echo "ERROR: unzip is required." >&2
  exit 1
fi

# Guard: clean run location
if [ -d newproject ]; then
  echo "Directory 'newproject' already exists. Please remove it before running this script."
  exit 1
fi

# Create project structure
mkdir newproject
cd newproject || exit 1

mkdir -p analysis output
: > README.md
: > analysis/main.py

# -------------------------------------------------------------------
# Download client data archive (standard tools only: curl + unzip)
# -------------------------------------------------------------------
curl -L -o rawdata.zip "https://github.com/UofT-DSI/shell/raw/refs/heads/main/02_activities/assignments/rawdata.zip"
unzip -q rawdata.zip
rm -f rawdata.zip   # [coworker] cleanup zip after extraction

###########################################
# Assignment steps (with coworker updates)
###########################################

# 1) Create a directory named data
mkdir -p data

# 2) Move the ./rawdata directory to ./data/raw
mv rawdata data/raw

# 3) List the contents of the ./data/raw directory
ls -la data/raw

# 4) In ./data/processed, create: server_logs, user_logs, event_logs
mkdir -p data/processed/{server_logs,user_logs,event_logs}

# 5) Copy all server log files ("server" in name AND .log extension)
cp data/raw/*server*.log data/processed/server_logs/ 2>/dev/null || true

# 6) Repeat for user and event logs
cp data/raw/*user*.log   data/processed/user_logs/   2>/dev/null || true
cp data/raw/*event*.log  data/processed/event_logs/  2>/dev/null || true

# 7) Remove all files containing IP addresses ("ipaddr" in filename)
# [coworker] Remove them anywhere under ./data (raw + processed)
find data -type f -name '*ipaddr*' -delete

# [coworker] Optional tidy: remove junk files if present
find data -type f \( -name '.DS_Store' -o -name 'Thumbs.db' -o -name '*~' -o -name '*.tmp' -o -name '*.part' \) -delete

# 8) Create ./data/inventory.txt listing all files in subfolders of ./data/processed
# [coworker] Sort the inventory for consistent autograder output
find data/processed -type f | sort > data/inventory.txt

###########################################
echo "Project setup is complete!"
