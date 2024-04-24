#!/bin/bash
# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
  mkdir path1 path2 path3 path4 path5
# 2. How would you verify the creation of all 5 directories?
  ls path1 path2 path3 path4 path5
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
  cd path1
  touch text1.txt
  echo "I Love Data" > text1.txt
  cd ..
  cd path2
  touch text2.txt
  echo "I Love Data" > text2.txt
  cd ..
  cd path3
  touch text3.txt
  echo "I Love Data" > text3.txt
  cd ..
  cd path4
  touch text4.txt
  echo "I Love Data" > text4.txt
  cd ..
  cd path5
  touch text5.txt
  echo "I Love Data" > text5.txt
  cd ..
# 4. How would you verify the presence of all 5 files?
  cd path1
  ls
  cd ..
  cd path2
  ls
  cd ..
  cd path3
  ls
  cd ..
  cd path4
  ls
  cd ..
  cd path5
  ls
  cd ..
# 5. How would you append to one of the existing files " and machine learning!"?
  echo " and machine learning!" >> path1/file1.txt
# 6. How would you verify that the text was indeed appended to the existing file?
  cat path1/file1.txt
# 7. How would you delete all files except for the one with the appended text?
# 8. How would you navigate back to the parent directory containing all the directories?
  cd ..
# 9. How would you remove each directory along with its contents?
  rm -r path1 path2 path3 path4 path5
# 10. How would you verify that all directories and files have been deleted?
  ls
