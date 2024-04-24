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
Navigate to the DSI directory
cd ~/DSI

# Navigate into dir1
cd dir1

# Create and verify each file
echo "I love data" > file1.txt
cat file1.txt

echo "I love data" > file2.txt
cat file2.txt

echo "I love data" > file3.txt
cat file3.txt

echo "I love data" > file4.txt
cat file4.txt

echo "I love data" > file5.txt
cat file5.txt

# 4. How would you verify the presence of all 5 files?
"using the cat 'function'when im in each of the directory" or i can also go to the DSI directory and use 'ls' 
# 5. How would you append to one of the existing files " and machine learning!"?
cd DSI
cd dir1
echo " and machine learning!" >> file1.txt

# 6. How would you verify that the text was indeed appended to the existing file?
cat file1.txt
# 7. How would you delete all files except for the one with the appended text?
rm ~/DSI/dir[2-5]/file*.txt

# 8. How would you navigate back to the parent directory containing all the directories?
#check current directory
cd ..

# 9. How would you remove each directory along with its contents?
rm -r ~/DSI/dir1 ~/DSI/dir2 ~/DSI/dir3 ~/DSI/dir4 ~/DSI/dir5

# 10. How would you verify that all directories and files have been deleted?
ls ~/DSI
