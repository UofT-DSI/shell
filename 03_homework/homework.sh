#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir1 dir2 dir3 dir4 dir5
# 2. How would you verify the creation of all 5 directories?
ls
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
touch file1.txt file2.txt file3.txt file4.txt file5.txt dir1
code file1.text
I love data
cp -r dir1 dir2/
cp -r dir1 dir3/
cp -r dir1 dir4/
cp -r dir1 dir5/

# 4. How would you verify the presence of all 5 files?
ls
# 5. How would you append to one of the existing files " and machine learning!"?
code file1.txt
and machine learning!

# 6. How would you verify that the text was indeed appended to the existing file?

# 7. How would you delete all files except for the one with the appended text?

# 8. How would you navigate back to the parent directory containing all the directories?
pwd
cd parent directory
# 9. How would you remove each directory along with its contents?
rm -r 
# 10. How would you verify that all directories and files have been deleted?
rm -i 
