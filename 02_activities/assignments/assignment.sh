#!/bin/bash
set -x

################
# Instructions #
################
# > Edit this file below to complete the homework assignment
# > Add your code below each comment to complete the tasks

# 1. Create 5 directories named dir1, dir2, dir3, dir4, and dir5
mkdir dir1 dir2 dir3 dir4 dir5
# 2. List the contents of the parent directory to verify the presence of the 5 directories
First step we write "pwd" to make sure we're in the my_directory file. If we are not in this file we need to select it by writing
cd /c/users/admin/my_directory (Example)
Next step is to write: ls my_directory 
# 3. Create 5 text files in dir2 named file1, file2, file3, file4, and file5
First step is writing cd dir2
Second step: touch file1 file2 file3 file4 file5
# 4. Append the words "Hello world" to dir2/file3

# 5. Verify that file3 contains the words "hello world" by printing the contents of the file in the terminal

# 6. Delete file4
rm file4
# 7. Delete directories dir4 and dir5 including all their contents (if any)
rmdir dir4/* dir5/*
# 8. List the contents of the parent directory to verify the deletion of dir4 and dir5
1- Command pwd to know where we're at
2- If it's my_directory then I command ls my_directory
3- If we are on a second level we comman .. d and the ls my_directory
