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
ls dir1 dir2 dir3 dir4 dir5

# 3. Create 5 text files in dir2 named file1, file2, file3, file4, and file5
mkdir file1 file2 file3 file4 file5
mv file1 dir2
mv file2 dir2
mv file3 dir2
mv file4 dir2
mv file5 dir2

# 4. Append the words "Hello world" to dir2/file3
echo "Hello World" >> dir2/file3.txt

# 5. Verify that file3 contains the words "hello world" by printing the contents of the file in the terminal
cat file3.txt

# 6. Delete file4
rm file4

# 7. Delete directories dir4 and dir5 including all their contents (if any)
rm dir4 dir5

# 8. List the contents of the parent directory to verify the deletion of dir4 and dir5
CD ~
LS
