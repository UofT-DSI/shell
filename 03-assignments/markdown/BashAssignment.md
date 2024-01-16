# Unix Shell Assignment

Instructions
------------
• Complete the listed tasks in Bash
• Your assignment submission should consist of screenshots of both your command and the output of your command, if any.


Introduction
------------
Kaylee and Simeon are biomedical engineering researchers trying to reanalyze data from an undergraduate project, where they collected electroencephalography (EEG), electromyography (EMG), and actigraphy (acceleration and rotational) recordings, and other information from subjects as they tried to keep their balance on a moving platform for a balance project.

Unfortunately, when they were silly undergraduates, they didn't know to keep their data tidy. They'd like your help efficiently doing the following data management tasks using your newfound Bash knowledge:

### Task 1: Setup your environment
1. Download their undergraduate data package and unzip it into your directory
1. Change directory into the folder containing the data package contents
1. To make sure we're keeping good records this time, print the current path to your working directory
1. Make a new folder named `tidied_data`

### Task 2: Taking inventory
1. List the contents of the data folder
1. List all the EEG files and write this list to a text file in the tidied_data folder named `eeg_inventory.txt`

### Task 3: Taking inventory, part 2
1. Notice that the EEG files are named `EEG_[subject number]_[session].edf`
1. Based on the `eeg_inventory.txt` file and the naming convention, generate a list of subject numbers and write it a file named `eeg_subjects.txt` (*Hint*: Consider the `cut` command)
1. Sort the `eeg_subjects.txt` file and write the output to `sorted_eeg_subjects.txt`
1. Notice that because each subject has multip;le EEG files, their subject IDs are duplicated. Create a unique list of subject IDs and write the output to `subject_inventory.txt`

### Task 4: The life changing magic of tidying up
1. For each subject, create a folder named after the subject ID in the `tidied_data` directory
1. Move all files relating to that subject into their respective directories (*Hint*: Consider a for-loop)
1. Notice that all the notes files have not been named consistently. Rename all the note files to `[subject_number]_notes.txt` within each subject folder.

### Task 5: Checking our work
1. Confirm that you've copied all the files over to the `tidied_data` directory
    1. Count the number of files copied:
        1. Generate a list of all the files within all the directories in `tidied_data` (*Hint*: Consider the `find` command and look for files)
        1. Count the number of lines in the file list
    1. Count the number of files in the original folder
1. Do the file counts match?

