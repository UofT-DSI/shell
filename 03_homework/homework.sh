#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
$mkdir Dir{1..}
# or $mkdir Dir1 Dir2 Dir3 Dir4 Dir5

# 2. How would you verify the creation of all 5 directories?
$ls
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
$touch Dir{1..5}/file{1..5}.txt
$echo "I love data" | tee -a Dir{1..5}/file{1..5}.txt

or 

$echo "I love data" > Dir1/file1.txt
$echo "I love data" > Dir1/file2.txt
$echo "I love data" > Dir1/file3.txt
$echo "I love data" > Dir1/file4.txt
$echo "I love data" > Dir1/file5.txt
$cp -r Dir1 Dir2
$cp -r Dir1 Dir3
$cp -r Dir1 Dir4
$cp -r Dir1 Dir5

# 4. How would you verify the presence of all 5 files?
$ls *
# 5. How would you append to one of the existing files " and machine learning!"?
$echo "and machine learning" | tee -a Dir{1..5}/file5.txt

or 

$echo "and machine learning" > Dir1/file5.txt
$echo "and machine learning" > Dir2/file5.txt
$echo "and machine learning" > Dir3/file5.txt
$echo "and machine learning" > Dir4/file5.txt
$echo "and machine learning" > Dir5/file5.txt

# 6. How would you verify that the text was indeed appended to the existing file?

$cat */file5.txt

# 7. How would you delete all files except for the one with the appended text?
$rm */file{1..4}.txt

# 8. How would you navigate back to the parent directory containing all the directories?
$cd ../
# 9. How would you remove each directory along with its contents?
$ rm -r *

# 10. How would you verify that all directories and files have been deleted?
$ ls
