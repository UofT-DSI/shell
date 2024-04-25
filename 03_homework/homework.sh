#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh
chmod +x /c/users/admin/documents/homework_update/homework.sh
# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir1 dir2 dir3 dir4 dir5
# 2. How would you verify the creation of all 5 directories?
ls
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
cd dir1
touch file1.txt
echo "I love data" > file1.txt
cd dir2
touch file2.txt
echo "I love data" > file2.txt
cd dir3
touch file3.txt
echo "I love data" > file3.txt
cd dir4
touch file4.txt
echo "I love data" > file4.txt
cd dir5
touch file5.txt
echo "I love data" > file5.txt
# 4. How would you verify the presence of all 5 files?
ls -al
# 5. How would you append to one of the existing files " and machine learning
echo "and machine learning" >> ./dir5/file5.txt
# 6. How would you verify that the text was indeed appended to the existing file?
cat file5.txt
# 7. How would you delete all files except for the one with the appended text?
rm ../dir1/file1.txt ../dir2/file2.txt ../dir3/file3.txt ../dir4/file4.txt
# 8. How would you navigate back to the parent directory containing all the directories?
cd ..
# 9. How would you remove each directory along with its contents?
rm -r dir1 dir2 dir3 dir4 dir5
# 10. How would you verify that all directories and files have been deleted?
ls