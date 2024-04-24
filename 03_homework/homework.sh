#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
$ mkdir Monday Tuesday Wednesday Thursday Friday
# 2. How would you verify the creation of all 5 directories?
$ ls
Friday/      Monday/    Tuesday/
homework.sh  Thursday/  Wednesday/
# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
$ cd Monday
$ touch 9am.txt 12pm.txt 3pm.txt 6pm.txt 9pm.txt
echo "I love data" > 9am.txt
echo "I love data" > 12pm.txt
echo "I love data" > 3pm.txt
echo "I love data" > 6pm.txt
echo "I love data" > 9pm.txt
$ cd ..
$ cd Tuesday
$ touch 9am.txt 12pm.txt 3pm.txt 6pm.txt 9pm.txt
echo "I love data" > 9am.txt
echo "I love data" > 12pm.txt
echo "I love data" > 3pm.txt
echo "I love data" > 6pm.txt
echo "I love data" > 9pm.txt
$ cd ..
$ cd Wednesday
$ touch 9am.txt 12pm.txt 3pm.txt 6pm.txt 9pm.txt
echo "I love data" > 9am.txt
echo "I love data" > 12pm.txt
echo "I love data" > 3pm.txt
echo "I love data" > 6pm.txt
echo "I love data" > 9pm.txt
$ cd ..
$ cd Thursday
$ touch 9am.txt 12pm.txt 3pm.txt 6pm.txt 9pm.txt
echo "I love data" > 9am.txt
echo "I love data" > 12pm.txt
echo "I love data" > 3pm.txt
echo "I love data" > 6pm.txt
echo "I love data" > 9pm.txt
$ cd ..
$ cd Friday
$ touch 9am.txt 12pm.txt 3pm.txt 6pm.txt 9pm.txt
echo "I love data" > 9am.txt
echo "I love data" > 12pm.txt
echo "I love data" > 3pm.txt
echo "I love data" > 6pm.txt
echo "I love data" > 9pm.txt
# 4. How would you verify the presence of all 5 files?
$ ls in each directory
# 5. How would you append to one of the existing files " and machine learning!"?
$ echo " and machine learning!" >> 9am.txt
# 6. How would you verify that the text was indeed appended to the existing file?
$ cat 9am.txt
I love data
 and machine learning!
# 7. How would you delete all files except for the one with the appended text?
I don't know
# 8. How would you navigate back to the parent directory containing all the directories?
$ cd ..
# 9. How would you remove each directory along with its contents?
$ rm -r Monday Tuesday Wednesday Thursday Friday
# 10. How would you verify that all directories and files have been deleted?
$ ls
