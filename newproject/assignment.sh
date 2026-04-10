#!/bin/bash

# 1. Create the data directory
mkdir -p data

# 2. Move rawdata into data/raw
mv rawdata data/raw

# 3. List contents to verify
ls data/raw

# 4. Create the sub-directories
mkdir -p data/processed/server_logs data/processed/user_logs data/processed/event_logs

# 5 & 6. Copy the specific logs
cp data/raw/*server*.log data/processed/server_logs/
cp data/raw/*user*.log data/processed/user_logs/
cp data/raw/*event*.log data/processed/event_logs/

# 7. Privacy: Force-remove IP address files
rm -f data/raw/*ipaddr*
rm -f data/processed/user_logs/*ipaddr*

# 8. Create the inventory list
ls -R data/processed > data/inventory.txt

echo "Assignment steps completed."