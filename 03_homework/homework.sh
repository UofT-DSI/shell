#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir Dir1 Dir2 Dir3 Dir4 Dir5

# 2. How would you verify the creation of all 5 directories?
ls -d

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
touch 5.txt Dir1 DIr2 Dir3 Dir4 Dir5
echo "I love data" 
cp 5.txt or rsync -r  Dir1/ Dir2/ Dir3/ Dir4/ Dir5

~ $ for i in Dir1 Dir2 Dir3 Dir4 Dir5
echo "I love data" 5 times
done

# 4. How would you verify the presence of all 5 files?
ls Dir*/*

# 5. How would you append to one of the existing files " and machine learning!"?
echo >> 5.txt
“machine learning”

# 6. How would you verify that the text was indeed appended to the existing file?
cat Dir1/5.txt

# 7. How would you delete all files except for the one with the appended text?
rm -v !(Dir1/“5.txt”)

# 8. How would you navigate back to the parent directory containing all the directories?
cd ..

# 9. How would you remove each directory along with its contents?
rmdir-r Dir1/ Dir2/ Dir3/ Dir4/ Dir5 

# 10. How would you verify that all directories and files have been deleted?
ls -a
echo “I love data” > 5.txt 
