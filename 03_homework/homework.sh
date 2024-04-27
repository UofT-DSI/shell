#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
$ mkdir dir1 dir2 dir3 dir4 dir5

# 2. How would you verify the creation of all 5 directories?
$ ls

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?

$ echo "I love data" > file1.txt
$ cp file1.txt file2.txt
$ cp file1.txt file3.txt
$ cp file1.txt file4.txt
$ cp file1.txt file5.txt
$ cp file* / dir1
$ cp dir1/* dir2
$ cp dir1/* dir3
$ cp dir1/* dir4
$ cp dir1/* dir5


# 4. How would you verify the presence of all 5 files?
$ ls dir1
$ ls dir2
$ ls dir3
$ ls dir4
$ ls dir5

# 5. How would you append to one of the existing files " and machine learning!"?
$ cd dir1
$ echo " and machine learning!" > file1.txt

# 6. How would you verify that the text was indeed appended to the existing file?



# 7. How would you delete all files except for the one with the appended text?
$ cd dir2
$ rm file*
(iterated for all except dir1 because there is the file with appended text in dir1)
for dir1 I kept file1.txt
$ cd ..
$ cd dir1
$ rm file2.txt file3.txt file4.txt file5.txt 


# 8. How would you navigate back to the parent directory containing all the directories?
$ cd ..

# 9. How would you remove each directory along with its contents?
be on the main folder $ cd ..
$ rm -r dir1/
or $ rm -r / * / *

# 10. How would you verify that all directories and files have been deleted?
$ ls
