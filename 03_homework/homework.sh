#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir1 dir2 dir3 dir4 dir5

# 2. How would you verify the creation of all 5 directories?
ls -d */

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
for dir in */;
do
  echo "I love data" > "$dir/note.txt";
done

# 4. How would you verify the presence of all 5 files?
for dir in */; do 
  if test -f "$dir/note.txt"
  then
    echo "$dir note.txt exists"
  else
    echo "$dir note.txt does not exist"
  fi
done

# 5. How would you append to one of the existing files " and machine learning!"?
echo " and machine learning!" >> dir1/note.txt

# 6. How would you verify that the text was indeed appended to the existing file?
cat dir1/note.txt

# 7. How would you delete all files except for the one with the appended text?
for dir in */; do
  if grep -Fxq " and machine learning!" $dir/note.txt
    then
      echo "Found file with appended text"
    else
      rm -f $dir/note.txt
      echo "Removed file without the text"
  fi
done

# 8. How would you navigate back to the parent directory containing all the directories?
cd dir1
cd ..

# 9. How would you remove each directory along with its contents?
for dir in */; do 
  rm -rf $dir
done

# 10. How would you verify that all directories and files have been deleted?
ls -a
