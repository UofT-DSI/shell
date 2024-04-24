# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
$ mkdir dir1 dir2 dir3 dir4 dir5

# 2. How would you verify the creation of all 5 directories?
$ ls ~/Desktop/homework/

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
$ touch testfile1.txt
$ echo "I love data" >> testfile1.txt
$ cp testfile1.txt testfile2.txt
$ cp testfile1.txt testfile3.txt
$ cp testfile1.txt testfile4.txt
$ cp testfile1.txt testfile5.txt
$ mv testfile1.txt testfile2.txt testfile3.txt testfile4.txt testfile5.txt dir1/
$ cp dir1/* dir2/
$ cp dir1/* dir3/
$ cp dir1/* dir4/
$ cp dir1/* dir5/

# 4. How would you verify the presence of all 5 files?
$ ls ~/Desktop/homework/dir1
$ ls ~/Desktop/homework/dir2
$ ls ~/Desktop/homework/dir3
$ ls ~/Desktop/homework/dir4
$ ls ~/Desktop/homework/dir5

# 5. How would you append to one of the existing files " and machine learning!"?
$ cd ~/Desktop/homework/dir1
$ echo " and machine learning!" >> testfile1.txt

# 6. How would you verify that the text was indeed appended to the existing file?
$ cat testfile1.txt

# 7. How would you delete all files except for the one with the appended text?
$ rm dir1/* !(testfile1.txt)


# 8. How would you navigate back to the parent directory containing all the directories?
$ cd ..


# 9. How would you remove each directory along with its contents?
$ rm -r dir1 dir2 dir3 dir4 dir5


# 10. How would you verify that all directories and files have been deleted?
$ ls ~/Desktop/homework
