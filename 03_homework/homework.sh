#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# get the current working directory and store it in a variable to make the
# script slightly easier to read.
CUR_DIR=$(pwd)
echo "running $(basename "$0") inside ${CUR_DIR}"
echo # to get around the lack of newlines in bash. Because bash, and I don't want \n\n in all my printfs

# 1. How would you create 5 directories? Feel free to use any name for your directories.
echo "making 5 directories named \"homework_dir\""
mkdir -p $CUR_DIR/homework_dir{1..5}

# 2. How would you verify the creation of all 5 directories?
echo "directories created: $(ls -d $CUR_DIR/homework_dir* | wc -l)"
echo # to get around the lack of newlines in bash. Because bash.

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
# Alternative: touch homework_dir{1..5}/data_is_cool{1..5}.txt and then echo
# into it.
echo "creating 5 files named data_is_cool.txt. One for each directory, with \"I love data\" in them"

# NOTE: random fun fact: bash can't do redirections to multiple targets. Zsh can, fish
# can (I think), and other POSIX shells definitely can, but Bash? Nope.
# As such, I'll leave this commented out, and use `tee` instead because I'm
# really enjoying my round of code golf. If tee is not installed, then run
# `printf "I love data" | ${CUR_DIR}"/homework_dir<etc>` 5 times for each dir.

# printf "I love data" > "${CUR_DIR}"/homework_dir{1..5}/data_is_cool.txt
printf "I love data" | tee "${CUR_DIR}"/homework_dir{1..5}/data_is_cool.txt > /dev/null

# 4. How would you verify the presence of all 5 files?
echo "files created: $(ls homework_dir*/data_is_cool* | wc -l)"

# 5. How would you append to one of the existing files " and machine learning!"?
echo "adding \" and machine learning!\" to the text file in homework_dir1/"
printf " and machine learning!" >> "${CUR_DIR}/homework_dir1/data_is_cool.txt"

# 6. How would you verify that the text was indeed appended to the existing file?
echo "files containing \"and machine learning!\": $(grep -rl "and machine learning!" $CUR_DIR)"
echo # to get around the lack of newlines in bash. Because bash.

#7. How would you delete all files except for the one with the appended text?
echo "removing all files in ${CUR_DIR}/** that do not have \"and machine learning!\" in them"
rm -r $(grep -rvl "and machine learning!" $CUR_DIR/*/*.txt)
echo "files left in ${CUR_DIR}: $(ls -R */*.txt)"
echo # to get around the lack of newlines in bash. Because bash.

# 8. How would you navigate back to the parent directory containing all the directories?

# I haven't left this directory...so... `cd ..` ? Or:
echo "cd'ing back to ${CUR_DIR}"
cd $CUR_DIR # I guess?
echo 
# 9. How would you remove each directory along with its contents?
echo "removing all sub-directories and files inside ${CUR_DIR}"
rm -r $(ls -d $CUR_DIR/*/)

# 10. How would you verify that all directories and files have been deleted?
echo "directories and files left in ${CUR_DIR}: $(ls | wc -l)" # should be 0 (or 1 if you're in the directory with this script)
