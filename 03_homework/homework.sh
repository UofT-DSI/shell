#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir -p homework_dir{1..5}
# 2. How would you verify the creation of all 5 directories?

# NOTE: Having a bit of fun here. Usually I'd run
#`ls -d homework_dir* | wc -l` or `ls -l homework_dir*` and count them out if
# small enough

if [[ $(ls -d homework_dir* | wc -l) -eq 5 ]]; \
then echo "5 directories created"; \
else echo "failed to create 5 directories"; fi

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
# Alternative: touch homework_dir{1..5}/data_is_cool{1..5}.txt and then echo
# into it.
printf "I love data" > "${pwd}/homework_dir{1..5}/data_is_cool.txt"

# 4. How would you verify the presence of all 5 files?
# Ok that's enough fun. I expect 5.
ls homework_dir*/data_is_cool* | wc -l

# 5. How would you append to one of the existing files " and machine learning!"?
printf " and machine learning\!" >> "${pwd}/homework_dir1/data_is_cool.txt"

# 6. How would you verify that the text was indeed appended to the existing file?
grep "and machine learning\!" "${pwd}/homework_dir1/data_is_cool.txt"

# 7. How would you delete all files except for the one with the appended text?
rm -r $(grep -rvl "and machine learning\!") */*.txt

# 8. How would you navigate back to the parent directory containing all the directories?

# I haven't left this directory...so... `cd ..` ? Or:
cd $(pwd) # I guess?

# 9. How would you remove each directory along with its contents?
rm -r $(ls -d */)

# 10. How would you verify that all directories and files have been deleted?
ls | wc -l # should be 0 (or 1 if you're in the directory with this script)
