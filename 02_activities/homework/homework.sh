#!/bin/bash

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir1 dir2 dir3 dir4 dir5
# 2. How would you verify the creation of all 5 directories?
ls home directory
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
echo "I Love data" > dir1/txt1.txt
echo "I love data" > dir2/txt2/txt
# 4. How would you verify the presence of all 5 files?
ls dir1 dir2 
# 5. How would you append to one of the existing files " and machine learning!"?
echo "and machine learning" >> txt1.txt
# 6. How would you verify that the text was indeed appended to the existing file?
code txt1.txt
# 7. How would you delete all files except for the one with the appended text?
manually ??
# 8. How would you navigate back to the parent directory containing all the directories?
cd ~
# 9. How would you remove each directory along with its contents?
rm -r dir1* 
# 10. How would you verify that all directories and files have been deleted?
ls home directory