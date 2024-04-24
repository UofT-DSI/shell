#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir -p dir1 dir2 dir3 dir4 dir5

# 2. How would you verify the creation of all 5 directories? 
ls -l

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?

#!/bin/bash

# Specify the directory where you want to create files in its subdirectories
base_directory="./"

# Find all subdirectories in the base directory
find "$base_directory" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
    # Create 5 text files in each directory
    for i in {1..5}; do
        file_path="${dir}/file${i}.txt"
        echo -n "I love data" > "$file_path"
    done
done
echo "#3. Text files with ""I love data"" created."

# 4. How would you verify the presence of all 5 files?

#!/bin/bash

# Specify the root directory path
root_dir="./"

# Use find to traverse all directories and count files in each directory
find "$root_dir" -type d | while read -r dir; do
    # Count the number of files in the directory
    count=$(find "$dir" -maxdepth 1 -type f | wc -l)
    # Print the directory name and the count of files
    echo "$dir: $count files"
done
echo "#4. All files have been verified."

# 5. How would you append to one of the existing files " and machine learning!"?
echo -n " and machine learning!" >> "dir1/file1.txt"
echo "#5. Text appended to file."
# Output:
# I love data and machine learning!


# 6. How would you verify that the text was indeed appended to the existing file?
cat "dir1/file1.txt"
echo "#6. Text verified."
# Output:
# I love data and machine learning!

# 7. How would you delete all files except for the one with the appended text?

# Find and delete all files in the current directory that do not contain the text "and machine learning!"
# find -type f ! -exec grep -q "and machine learning!" {} \; -print | xargs rm

# Alternative method using find and grep. Delete all TEXT files in the current directory that do not contain the text "and machine learning!"
find ./ -type f -name '*.txt' ! -exec grep -q "and machine learning!" {} \; -delete
echo "#7. All files except for the one with the appended text have been deleted."


# 8. How would you navigate back to the parent directory containing all the directories?
# cd ~ 

# 9. How would you remove each directory along with its contents?
rm -r dir1 dir2 dir3 dir4 dir5
echo "#9. All directories and files have been deleted."

# 10. How would you verify that all directories and files have been deleted?
ls

# ===================== END ==========================