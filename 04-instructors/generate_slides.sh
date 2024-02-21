#!/bin/bash

# ---------- #
#  Generate pdf versions of all slides, to be run from wherever the md files are located at.
# ---------- #

# Hard code the folder locations
folder_md="slides-resources"
folder_pdf="lessons"

# Make the lessons folder if it does not exist already
if [ ! -d "$folder_pdf" ]; then
    echo "Making folder: '$folder_pdf'"
    mkdir $folder_pdf
else
    echo "Folder '$folder_pdf' already exists"
fi

# Ensure marp cli is set up: https://github.com/marp-team/marp-cli
# Or get it from VSCode store.
marp --version &> /dev/null

# Check the exit status of the previous command
if [ $? -eq 0 ]; then
    echo "Marp CLI is set up."
else
    echo "Marp CLI is not set up. Please install"
fi

# Get list of files
markdown_files=$(ls $folder_md | grep ".md$")

# Loop over each file
for markdown_file in $markdown_files; do
    echo "markdown file: "$markdown_file
    file_out="${markdown_file%.md}.pdf"
    marp $folder_md/$markdown_file --output $folder_pdf/$file_out --html --allow-local-files --pdf --pdf-notes
done


echo "~~~ End of generate_slides.sh ~~~"
