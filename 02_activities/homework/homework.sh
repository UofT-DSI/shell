#!/bin/bash

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir{1..5}

# 2. How would you verify the creation of all 5 directories?
ls

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
for dir in dir{1..5};
         do mkdir -p "$dir" && echo "I love data" > "$dir/text.txt"
done   
# 4. How would you verify the presence of all 5 files?
ls -R
# 5. How would you append to one of the existing files " and machine learning!"?
echo " and machine learning!" >> dir1/text.txt

# 6. How would you verify that the text was indeed appended to the existing file?
cat dir1/text.txt
# 7. How would you delete all files except for the one with the appended text?
for dir in dir{2..5};
         do rm "$dir/text.txt"
done 

# 8. How would you navigate back to the parent directory containing all the directories?
cd .
# 9. How would you remove each directory along with its contents?
rm -r dir{1..5}
# 10. How would you verify that all directories and files have been deleted?
ls

