#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir day1 day2 day3 day4 day5

# 2. How would you verify the creation of all 5 directories?
ls

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
cd day1
touch file.txt
echo "I love data" > file.txt
cp day1/file.txt day2
cp day1/file.txt day3
cp day1/file.txt day4
cp day1/file.txt day5

# 4. How would you verify the presence of all 5 files?
ls day1 day2 day3 day4 day5

# 5. How would you append to one of the existing files " and machine learning!"?
echo "I love data and machine learning!" > day1/file.txt

# 6. How would you verify that the text was indeed appended to the existing file?
code file.txt

# 7. How would you delete all files except for the one with the appended text?
rm -r day2 day3 day4 day5

# 8. How would you navigate back to the parent directory containing all the directories?
cd

# 9. How would you remove each directory along with its contents?
rm -r

# 10. How would you verify that all directories and files have been deleted?
ls
