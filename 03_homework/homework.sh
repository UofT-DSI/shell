#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir_1 dir_2 dir_3 dir_4 dir_5

# 2. How would you verify the creation of all 5 directories?
ls -la

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
cd dir_1
touch Dir_1.txt
echo "I love data" > Dir_1.txt

cd ..
cd dir_2
touch Dir_2.txt
echo "I love data" > Dir_2.txt

cd ..
cd dir_3
touch Dir_3.txt
echo "I love data" > Dir_3.txt

cd ..
cd dir_4
touch Dir_4.txt
echo "I love data" > Dir_4.txt

cd ..
cd dir_5
touch Dir_5.txt
echo "I love data" > Dir_5.txt

# 4. How would you verify the presence of all 5 files?
cd ..
ls -R

#Also we can see the contents of each one:
cd dir_1
cat Dir_1.txt

cd ..
cd dir_2
cat Dir_2.txt

cd ..
cd dir_3
cat Dir_3.txt

cd ..
cd dir_3
cat Dir_3.txt

cd ..
cd dir_4
cat Dir_4.txt

cd ..
cd dir_5
cat Dir_5.txt

# 5. How would you append to one of the existing files " and machine learning!"?
cd ..
echo -n " and machine learning!" >> dir_1/Dir_1.txt

# 6. How would you verify that the text was indeed appended to the existing file?
cat dir_1/Dir_1.txt

# 7. How would you delete all files except for the one with the appended text?
cd dir_2
rm *
cd ..
cd dir_3
rm *
cd ..
cd dir_4
rm *
cd ..
cd dir_5
rm *

# 8. How would you navigate back to the parent directory containing all the directories?
cd ..

# 9. How would you remove each directory along with its contents?
rm -rf dir_1
rm -rf dir_2
rm -rf dir_3
rm -rf dir_4
rm -rf dir_5

# 10. How would you verify that all directories and files have been deleted?
ls -la
