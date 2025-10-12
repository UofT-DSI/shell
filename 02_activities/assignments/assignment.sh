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
/shell/02_activities/assignments (assignment)
$ ls
assignment.sh*              data/               newproject/
assignment_instructions.md  github_actions.png  rawdata.zip
# 2. Move the ./rawdata directory to ./data/raw
Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ ls
raw/  rawdata.zip
# 3. List the contents of the ./data/raw directory
Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ ls
raw/  rawdata.zip

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ unzip rawdata.zip
Archive:  rawdata.zip
   creating: rawdata/
  inflating: rawdata/event_log_1.log
  inflating: rawdata/event_log_10.log
  inflating: rawdata/event_log_11.log
  inflating: rawdata/event_log_12.log
  inflating: rawdata/event_log_13.log
  inflating: rawdata/event_log_14.log
  inflating: rawdata/event_log_15.log
  inflating: rawdata/event_log_16.log
  inflating: rawdata/event_log_17.log
  inflating: rawdata/event_log_18.log
  inflating: rawdata/event_log_19.log
  inflating: rawdata/event_log_2.log
  inflating: rawdata/event_log_20.log
  inflating: rawdata/event_log_21.log
  inflating: rawdata/event_log_22.log
  inflating: rawdata/event_log_23.log
  inflating: rawdata/event_log_24.log
  inflating: rawdata/event_log_25.log
  inflating: rawdata/event_log_26.log
  inflating: rawdata/event_log_27.log
  inflating: rawdata/event_log_28.log
  inflating: rawdata/event_log_29.log
  inflating: rawdata/event_log_3.log
  inflating: rawdata/event_log_30.log
  inflating: rawdata/event_log_31.log
  inflating: rawdata/event_log_32.log
  inflating: rawdata/event_log_33.log
  inflating: rawdata/event_log_34.log
  inflating: rawdata/event_log_35.log
  inflating: rawdata/event_log_36.log
  inflating: rawdata/event_log_37.log
  inflating: rawdata/event_log_38.log
  inflating: rawdata/event_log_39.log
  inflating: rawdata/event_log_4.log
  inflating: rawdata/event_log_40.log
  inflating: rawdata/event_log_41.log
  inflating: rawdata/event_log_42.log
  inflating: rawdata/event_log_43.log
  inflating: rawdata/event_log_44.log
  inflating: rawdata/event_log_45.log
  inflating: rawdata/event_log_46.log
  inflating: rawdata/event_log_47.log
  inflating: rawdata/event_log_48.log
  inflating: rawdata/event_log_49.log
  inflating: rawdata/event_log_5.log
  inflating: rawdata/event_log_50.log
  inflating: rawdata/event_log_6.log
  inflating: rawdata/event_log_7.log
  inflating: rawdata/event_log_8.log
  inflating: rawdata/event_log_9.log
  inflating: rawdata/ipaddr_1.txt
  inflating: rawdata/ipaddr_10.txt
  inflating: rawdata/ipaddr_2.txt
  inflating: rawdata/ipaddr_3.txt
  inflating: rawdata/ipaddr_4.txt
  inflating: rawdata/ipaddr_5.txt
  inflating: rawdata/ipaddr_6.txt
  inflating: rawdata/ipaddr_7.txt
  inflating: rawdata/ipaddr_8.txt
  inflating: rawdata/ipaddr_9.txt
  inflating: rawdata/misc_data.txt
  inflating: rawdata/other_file_1.dat
  inflating: rawdata/other_file_10.dat
  inflating: rawdata/other_file_11.dat
  inflating: rawdata/other_file_12.dat
  inflating: rawdata/other_file_13.dat
  inflating: rawdata/other_file_14.dat
  inflating: rawdata/other_file_15.dat
  inflating: rawdata/other_file_16.dat
  inflating: rawdata/other_file_17.dat
  inflating: rawdata/other_file_18.dat
  inflating: rawdata/other_file_19.dat
  inflating: rawdata/other_file_2.dat
  inflating: rawdata/other_file_3.dat
  inflating: rawdata/other_file_4.dat
  inflating: rawdata/other_file_5.dat
  inflating: rawdata/other_file_6.dat
  inflating: rawdata/other_file_7.dat
  inflating: rawdata/other_file_8.dat
  inflating: rawdata/other_file_9.dat
  inflating: rawdata/server_log_1.log
  inflating: rawdata/server_log_10.log
  inflating: rawdata/server_log_11.log
  inflating: rawdata/server_log_12.log
  inflating: rawdata/server_log_13.log
  inflating: rawdata/server_log_14.log
  inflating: rawdata/server_log_15.log
  inflating: rawdata/server_log_16.log
  inflating: rawdata/server_log_17.log
  inflating: rawdata/server_log_18.log
  inflating: rawdata/server_log_19.log
  inflating: rawdata/server_log_2.log
  inflating: rawdata/server_log_20.log
  inflating: rawdata/server_log_21.log
  inflating: rawdata/server_log_22.log
  inflating: rawdata/server_log_23.log
  inflating: rawdata/server_log_24.log
  inflating: rawdata/server_log_25.log
  inflating: rawdata/server_log_26.log
  inflating: rawdata/server_log_27.log
  inflating: rawdata/server_log_28.log
  inflating: rawdata/server_log_29.log
  inflating: rawdata/server_log_3.log
  inflating: rawdata/server_log_30.log
  inflating: rawdata/server_log_31.log
  inflating: rawdata/server_log_32.log
  inflating: rawdata/server_log_33.log
  inflating: rawdata/server_log_34.log
  inflating: rawdata/server_log_35.log
  inflating: rawdata/server_log_36.log
  inflating: rawdata/server_log_37.log
  inflating: rawdata/server_log_38.log
  inflating: rawdata/server_log_39.log
  inflating: rawdata/server_log_4.log
  inflating: rawdata/server_log_40.log
  inflating: rawdata/server_log_41.log
  inflating: rawdata/server_log_42.log
  inflating: rawdata/server_log_43.log
  inflating: rawdata/server_log_44.log
  inflating: rawdata/server_log_45.log
  inflating: rawdata/server_log_46.log
  inflating: rawdata/server_log_47.log
  inflating: rawdata/server_log_48.log
  inflating: rawdata/server_log_49.log
  inflating: rawdata/server_log_5.log
  inflating: rawdata/server_log_50.log
  inflating: rawdata/server_log_6.log
  inflating: rawdata/server_log_7.log
  inflating: rawdata/server_log_8.log
  inflating: rawdata/server_log_9.log
  inflating: rawdata/user_ipaddr_1.log
  inflating: rawdata/user_ipaddr_10.log
  inflating: rawdata/user_ipaddr_11.log
  inflating: rawdata/user_ipaddr_12.log
  inflating: rawdata/user_ipaddr_13.log
  inflating: rawdata/user_ipaddr_14.log
  inflating: rawdata/user_ipaddr_15.log
  inflating: rawdata/user_ipaddr_16.log
  inflating: rawdata/user_ipaddr_17.log
  inflating: rawdata/user_ipaddr_18.log
  inflating: rawdata/user_ipaddr_19.log
  inflating: rawdata/user_ipaddr_2.log
  inflating: rawdata/user_ipaddr_20.log
  inflating: rawdata/user_ipaddr_3.log
  inflating: rawdata/user_ipaddr_4.log
  inflating: rawdata/user_ipaddr_5.log
  inflating: rawdata/user_ipaddr_6.log
  inflating: rawdata/user_ipaddr_7.log
  inflating: rawdata/user_ipaddr_8.log
  inflating: rawdata/user_ipaddr_9.log
  inflating: rawdata/user_log_1.log
  inflating: rawdata/user_log_10.log
  inflating: rawdata/user_log_11.log
  inflating: rawdata/user_log_12.log
  inflating: rawdata/user_log_13.log
  inflating: rawdata/user_log_14.log
  inflating: rawdata/user_log_15.log
  inflating: rawdata/user_log_16.log
  inflating: rawdata/user_log_17.log
  inflating: rawdata/user_log_18.log
  inflating: rawdata/user_log_19.log
  inflating: rawdata/user_log_2.log
  inflating: rawdata/user_log_20.log
  inflating: rawdata/user_log_21.log
  inflating: rawdata/user_log_22.log
  inflating: rawdata/user_log_23.log
  inflating: rawdata/user_log_24.log
  inflating: rawdata/user_log_25.log
  inflating: rawdata/user_log_26.log
  inflating: rawdata/user_log_27.log
  inflating: rawdata/user_log_28.log
  inflating: rawdata/user_log_29.log
  inflating: rawdata/user_log_3.log
  inflating: rawdata/user_log_30.log
  inflating: rawdata/user_log_31.log
  inflating: rawdata/user_log_32.log
  inflating: rawdata/user_log_33.log
  inflating: rawdata/user_log_34.log
  inflating: rawdata/user_log_35.log
  inflating: rawdata/user_log_36.log
  inflating: rawdata/user_log_37.log
  inflating: rawdata/user_log_38.log
  inflating: rawdata/user_log_39.log
  inflating: rawdata/user_log_4.log
  inflating: rawdata/user_log_40.log
  inflating: rawdata/user_log_41.log
  inflating: rawdata/user_log_42.log
  inflating: rawdata/user_log_43.log
  inflating: rawdata/user_log_44.log
  inflating: rawdata/user_log_45.log
  inflating: rawdata/user_log_46.log
  inflating: rawdata/user_log_47.log
  inflating: rawdata/user_log_48.log
  inflating: rawdata/user_log_49.log
  inflating: rawdata/user_log_5.log
  inflating: rawdata/user_log_50.log
  inflating: rawdata/user_log_6.log
  inflating: rawdata/user_log_7.log
  inflating: rawdata/user_log_8.log
  inflating: rawdata/user_log_9.log

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ ls
raw/  rawdata/  rawdata.zip

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ cd rawdata

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data/rawdata (assignment)
$ ls
event_log_1.log    other_file_15.dat   user_ipaddr_13.log
event_log_10.log   other_file_16.dat   user_ipaddr_14.log
event_log_11.log   other_file_17.dat   user_ipaddr_15.log
event_log_12.log   other_file_18.dat   user_ipaddr_16.log
event_log_13.log   other_file_19.dat   user_ipaddr_17.log
event_log_14.log   other_file_2.dat    user_ipaddr_18.log
event_log_15.log   other_file_3.dat    user_ipaddr_19.log
event_log_16.log   other_file_4.dat    user_ipaddr_2.log
event_log_17.log   other_file_5.dat    user_ipaddr_20.log
event_log_18.log   other_file_6.dat    user_ipaddr_3.log
event_log_19.log   other_file_7.dat    user_ipaddr_4.log
event_log_2.log    other_file_8.dat    user_ipaddr_5.log
event_log_20.log   other_file_9.dat    user_ipaddr_6.log
event_log_21.log   server_log_1.log    user_ipaddr_7.log
event_log_22.log   server_log_10.log   user_ipaddr_8.log
event_log_23.log   server_log_11.log   user_ipaddr_9.log
event_log_24.log   server_log_12.log   user_log_1.log
event_log_25.log   server_log_13.log   user_log_10.log
event_log_26.log   server_log_14.log   user_log_11.log
event_log_27.log   server_log_15.log   user_log_12.log
event_log_28.log   server_log_16.log   user_log_13.log
event_log_29.log   server_log_17.log   user_log_14.log
event_log_3.log    server_log_18.log   user_log_15.log
event_log_30.log   server_log_19.log   user_log_16.log
event_log_31.log   server_log_2.log    user_log_17.log
event_log_32.log   server_log_20.log   user_log_18.log
event_log_33.log   server_log_21.log   user_log_19.log
event_log_34.log   server_log_22.log   user_log_2.log
event_log_35.log   server_log_23.log   user_log_20.log
event_log_36.log   server_log_24.log   user_log_21.log
event_log_37.log   server_log_25.log   user_log_22.log
event_log_38.log   server_log_26.log   user_log_23.log
event_log_39.log   server_log_27.log   user_log_24.log
event_log_4.log    server_log_28.log   user_log_25.log
event_log_40.log   server_log_29.log   user_log_26.log
event_log_41.log   server_log_3.log    user_log_27.log
event_log_42.log   server_log_30.log   user_log_28.log
event_log_43.log   server_log_31.log   user_log_29.log
event_log_44.log   server_log_32.log   user_log_3.log
event_log_45.log   server_log_33.log   user_log_30.log
event_log_46.log   server_log_34.log   user_log_31.log
event_log_47.log   server_log_35.log   user_log_32.log
event_log_48.log   server_log_36.log   user_log_33.log
event_log_49.log   server_log_37.log   user_log_34.log
event_log_5.log    server_log_38.log   user_log_35.log
event_log_50.log   server_log_39.log   user_log_36.log
event_log_6.log    server_log_4.log    user_log_37.log
event_log_7.log    server_log_40.log   user_log_38.log
event_log_8.log    server_log_41.log   user_log_39.log
event_log_9.log    server_log_42.log   user_log_4.log
ipaddr_1.txt       server_log_43.log   user_log_40.log
ipaddr_10.txt      server_log_44.log   user_log_41.log
ipaddr_2.txt       server_log_45.log   user_log_42.log
ipaddr_3.txt       server_log_46.log   user_log_43.log
ipaddr_4.txt       server_log_47.log   user_log_44.log
ipaddr_5.txt       server_log_48.log   user_log_45.log
ipaddr_6.txt       server_log_49.log   user_log_46.log
ipaddr_7.txt       server_log_5.log    user_log_47.log
ipaddr_8.txt       server_log_50.log   user_log_48.log
ipaddr_9.txt       server_log_6.log    user_log_49.log
misc_data.txt      server_log_7.log    user_log_5.log
other_file_1.dat   server_log_8.log    user_log_50.log
other_file_10.dat  server_log_9.log    user_log_6.log
other_file_11.dat  user_ipaddr_1.log   user_log_7.log
other_file_12.dat  user_ipaddr_10.log  user_log_8.log
other_file_13.dat  user_ipaddr_11.log  user_log_9.log
other_file_14.dat  user_ipaddr_12.log
# 4. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs
Usha@MUK2023 MINGW64 ~
$ cd /c/Users/usha_/shell/02_activities/assignments/data/

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ mkdir processed

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ ls
processed/  raw/  rawdata/  rawdata.zip

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ cd processed

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data/processed (assignment)
$ mkdir server_logs

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data/processed (assignment)
$ mkdir user_logs

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data/processed (assignment)
$ mkdir events_logs

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data/processed (assignment)
$ ls
events_logs/  server_logs/  user_logs/
# 5. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs
Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ cp ./rawdata/*server*.log ./processed/server_logs/

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ ls
processed/  raw/  rawdata/  rawdata.zip

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ cd processed

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data/processed (assignment)
$ ls
events_logs/  server_logs/  user_logs/

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data/processed (assignment)
$ cd server_logs

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data/processed/server_logs (assignment)
$ ls
server_log_1.log   server_log_25.log  server_log_40.log
server_log_10.log  server_log_26.log  server_log_41.log
server_log_11.log  server_log_27.log  server_log_42.log
server_log_12.log  server_log_28.log  server_log_43.log
server_log_13.log  server_log_29.log  server_log_44.log
server_log_14.log  server_log_3.log   server_log_45.log
server_log_15.log  server_log_30.log  server_log_46.log
server_log_16.log  server_log_31.log  server_log_47.log
server_log_17.log  server_log_32.log  server_log_48.log
server_log_18.log  server_log_33.log  server_log_49.log
server_log_19.log  server_log_34.log  server_log_5.log
server_log_2.log   server_log_35.log  server_log_50.log
server_log_20.log  server_log_36.log  server_log_6.log
server_log_21.log  server_log_37.log  server_log_7.log
server_log_22.log  server_log_38.log  server_log_8.log
server_log_23.log  server_log_39.log  server_log_9.log
server_log_24.log  server_log_4.log
# 6. Repeat the above step for user logs and event logs
cp ./rawdata/*event*.log ./processed/events_logs/
cp ./rawdata/*user*.log ./processed/user_logs/
# 7. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs
Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ rm ./rawdata/*ipaddr*

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ rm ./processed/user_logs/*ipaddr*
# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed


Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ find ./processed -type f> ./inventory.txt

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ ls
inventory.txt  processed/  raw/  rawdata/  rawdata.zip

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ ls ./rawdata
event_log_1.log    other_file_15.dat  server_log_5.log
event_log_10.log   other_file_16.dat  server_log_50.log
event_log_11.log   other_file_17.dat  server_log_6.log
event_log_12.log   other_file_18.dat  server_log_7.log
event_log_13.log   other_file_19.dat  server_log_8.log
event_log_14.log   other_file_2.dat   server_log_9.log
event_log_15.log   other_file_3.dat   user_log_1.log
event_log_16.log   other_file_4.dat   user_log_10.log
event_log_17.log   other_file_5.dat   user_log_11.log
event_log_18.log   other_file_6.dat   user_log_12.log
event_log_19.log   other_file_7.dat   user_log_13.log
event_log_2.log    other_file_8.dat   user_log_14.log
event_log_20.log   other_file_9.dat   user_log_15.log
event_log_21.log   server_log_1.log   user_log_16.log
event_log_22.log   server_log_10.log  user_log_17.log
event_log_23.log   server_log_11.log  user_log_18.log
event_log_24.log   server_log_12.log  user_log_19.log
event_log_25.log   server_log_13.log  user_log_2.log
event_log_26.log   server_log_14.log  user_log_20.log
event_log_27.log   server_log_15.log  user_log_21.log
event_log_28.log   server_log_16.log  user_log_22.log
event_log_29.log   server_log_17.log  user_log_23.log
event_log_3.log    server_log_18.log  user_log_24.log
event_log_30.log   server_log_19.log  user_log_25.log
event_log_31.log   server_log_2.log   user_log_26.log
event_log_32.log   server_log_20.log  user_log_27.log
event_log_33.log   server_log_21.log  user_log_28.log
event_log_34.log   server_log_22.log  user_log_29.log
event_log_35.log   server_log_23.log  user_log_3.log
event_log_36.log   server_log_24.log  user_log_30.log
event_log_37.log   server_log_25.log  user_log_31.log
event_log_38.log   server_log_26.log  user_log_32.log
event_log_39.log   server_log_27.log  user_log_33.log
event_log_4.log    server_log_28.log  user_log_34.log
event_log_40.log   server_log_29.log  user_log_35.log
event_log_41.log   server_log_3.log   user_log_36.log
event_log_42.log   server_log_30.log  user_log_37.log
event_log_43.log   server_log_31.log  user_log_38.log
event_log_44.log   server_log_32.log  user_log_39.log
event_log_45.log   server_log_33.log  user_log_4.log
event_log_46.log   server_log_34.log  user_log_40.log
event_log_47.log   server_log_35.log  user_log_41.log
event_log_48.log   server_log_36.log  user_log_42.log
event_log_49.log   server_log_37.log  user_log_43.log
event_log_5.log    server_log_38.log  user_log_44.log
event_log_50.log   server_log_39.log  user_log_45.log
event_log_6.log    server_log_4.log   user_log_46.log
event_log_7.log    server_log_40.log  user_log_47.log
event_log_8.log    server_log_41.log  user_log_48.log
event_log_9.log    server_log_42.log  user_log_49.log
misc_data.txt      server_log_43.log  user_log_5.log
other_file_1.dat   server_log_44.log  user_log_50.log
other_file_10.dat  server_log_45.log  user_log_6.log
other_file_11.dat  server_log_46.log  user_log_7.log
other_file_12.dat  server_log_47.log  user_log_8.log
other_file_13.dat  server_log_48.log  user_log_9.log
other_file_14.dat  server_log_49.log

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ ls ./processed/user_logs
user_log_1.log   user_log_25.log  user_log_40.log
user_log_10.log  user_log_26.log  user_log_41.log
user_log_11.log  user_log_27.log  user_log_42.log
user_log_12.log  user_log_28.log  user_log_43.log
user_log_13.log  user_log_29.log  user_log_44.log
user_log_14.log  user_log_3.log   user_log_45.log
user_log_15.log  user_log_30.log  user_log_46.log
user_log_16.log  user_log_31.log  user_log_47.log
user_log_17.log  user_log_32.log  user_log_48.log
user_log_18.log  user_log_33.log  user_log_49.log
user_log_19.log  user_log_34.log  user_log_5.log
user_log_2.log   user_log_35.log  user_log_50.log
user_log_20.log  user_log_36.log  user_log_6.log
user_log_21.log  user_log_37.log  user_log_7.log
user_log_22.log  user_log_38.log  user_log_8.log
user_log_23.log  user_log_39.log  user_log_9.log
user_log_24.log  user_log_4.log

Usha@MUK2023 MINGW64 ~/shell/02_activities/assignments/data (assignment)
$ cat ./inventory.txt
./processed/events_logs/event_log_1.log
./processed/events_logs/event_log_10.log
./processed/events_logs/event_log_11.log
./processed/events_logs/event_log_12.log
./processed/events_logs/event_log_13.log
./processed/events_logs/event_log_14.log
./processed/events_logs/event_log_15.log
./processed/events_logs/event_log_16.log
./processed/events_logs/event_log_17.log
./processed/events_logs/event_log_18.log
./processed/events_logs/event_log_19.log
./processed/events_logs/event_log_2.log
./processed/events_logs/event_log_20.log
./processed/events_logs/event_log_21.log
./processed/events_logs/event_log_22.log
./processed/events_logs/event_log_23.log
./processed/events_logs/event_log_24.log
./processed/events_logs/event_log_25.log
./processed/events_logs/event_log_26.log
./processed/events_logs/event_log_27.log
./processed/events_logs/event_log_28.log
./processed/events_logs/event_log_29.log
./processed/events_logs/event_log_3.log
./processed/events_logs/event_log_30.log
./processed/events_logs/event_log_31.log
./processed/events_logs/event_log_32.log
./processed/events_logs/event_log_33.log
./processed/events_logs/event_log_34.log
./processed/events_logs/event_log_35.log
./processed/events_logs/event_log_36.log
./processed/events_logs/event_log_37.log
./processed/events_logs/event_log_38.log
./processed/events_logs/event_log_39.log
./processed/events_logs/event_log_4.log
./processed/events_logs/event_log_40.log
./processed/events_logs/event_log_41.log
./processed/events_logs/event_log_42.log
./processed/events_logs/event_log_43.log
./processed/events_logs/event_log_44.log
./processed/events_logs/event_log_45.log
./processed/events_logs/event_log_46.log
./processed/events_logs/event_log_47.log
./processed/events_logs/event_log_48.log
./processed/events_logs/event_log_49.log
./processed/events_logs/event_log_5.log
./processed/events_logs/event_log_50.log
./processed/events_logs/event_log_6.log
./processed/events_logs/event_log_7.log
./processed/events_logs/event_log_8.log
./processed/events_logs/event_log_9.log
./processed/server_logs/server_log_1.log
./processed/server_logs/server_log_10.log
./processed/server_logs/server_log_11.log
./processed/server_logs/server_log_12.log
./processed/server_logs/server_log_13.log
./processed/server_logs/server_log_14.log
./processed/server_logs/server_log_15.log
./processed/server_logs/server_log_16.log
./processed/server_logs/server_log_17.log
./processed/server_logs/server_log_18.log
./processed/server_logs/server_log_19.log
./processed/server_logs/server_log_2.log
./processed/server_logs/server_log_20.log
./processed/server_logs/server_log_21.log
./processed/server_logs/server_log_22.log
./processed/server_logs/server_log_23.log
./processed/server_logs/server_log_24.log
./processed/server_logs/server_log_25.log
./processed/server_logs/server_log_26.log
./processed/server_logs/server_log_27.log
./processed/server_logs/server_log_28.log
./processed/server_logs/server_log_29.log
./processed/server_logs/server_log_3.log
./processed/server_logs/server_log_30.log
./processed/server_logs/server_log_31.log
./processed/server_logs/server_log_32.log
./processed/server_logs/server_log_33.log
./processed/server_logs/server_log_34.log
./processed/server_logs/server_log_35.log
./processed/server_logs/server_log_36.log
./processed/server_logs/server_log_37.log
./processed/server_logs/server_log_38.log
./processed/server_logs/server_log_39.log
./processed/server_logs/server_log_4.log
./processed/server_logs/server_log_40.log
./processed/server_logs/server_log_41.log
./processed/server_logs/server_log_42.log
./processed/server_logs/server_log_43.log
./processed/server_logs/server_log_44.log
./processed/server_logs/server_log_45.log
./processed/server_logs/server_log_46.log
./processed/server_logs/server_log_47.log
./processed/server_logs/server_log_48.log
./processed/server_logs/server_log_49.log
./processed/server_logs/server_log_5.log
./processed/server_logs/server_log_50.log
./processed/server_logs/server_log_6.log
./processed/server_logs/server_log_7.log
./processed/server_logs/server_log_8.log
./processed/server_logs/server_log_9.log
./processed/user_logs/user_log_1.log
./processed/user_logs/user_log_10.log
./processed/user_logs/user_log_11.log
./processed/user_logs/user_log_12.log
./processed/user_logs/user_log_13.log
./processed/user_logs/user_log_14.log
./processed/user_logs/user_log_15.log
./processed/user_logs/user_log_16.log
./processed/user_logs/user_log_17.log
./processed/user_logs/user_log_18.log
./processed/user_logs/user_log_19.log
./processed/user_logs/user_log_2.log
./processed/user_logs/user_log_20.log
./processed/user_logs/user_log_21.log
./processed/user_logs/user_log_22.log
./processed/user_logs/user_log_23.log
./processed/user_logs/user_log_24.log
./processed/user_logs/user_log_25.log
./processed/user_logs/user_log_26.log
./processed/user_logs/user_log_27.log
./processed/user_logs/user_log_28.log
./processed/user_logs/user_log_29.log
./processed/user_logs/user_log_3.log
./processed/user_logs/user_log_30.log
./processed/user_logs/user_log_31.log
./processed/user_logs/user_log_32.log
./processed/user_logs/user_log_33.log
./processed/user_logs/user_log_34.log
./processed/user_logs/user_log_35.log
./processed/user_logs/user_log_36.log
./processed/user_logs/user_log_37.log
./processed/user_logs/user_log_38.log
./processed/user_logs/user_log_39.log
./processed/user_logs/user_log_4.log
./processed/user_logs/user_log_40.log
./processed/user_logs/user_log_41.log
./processed/user_logs/user_log_42.log
./processed/user_logs/user_log_43.log
./processed/user_logs/user_log_44.log
./processed/user_logs/user_log_45.log
./processed/user_logs/user_log_46.log
./processed/user_logs/user_log_47.log
./processed/user_logs/user_log_48.log
./processed/user_logs/user_log_49.log
./processed/user_logs/user_log_5.log
./processed/user_logs/user_log_50.log
./processed/user_logs/user_log_6.log
./processed/user_logs/user_log_7.log
./processed/user_logs/user_log_8.log
./processed/user_logs/user_log_9.log

###########################################

echo "Project setup is complete!"
$ echo "Project setup is complete!"
Project setup is complete!