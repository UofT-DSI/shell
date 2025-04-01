# Bash Commands Reference

## 📋 Commands Overview

```bash
$ echo Rachael
Rachael

$ conda activate dsi_participant
(dsi_participant)

$ date
Tue, Nov 19, 2024 6:28:10PM

$ asdkfjhgoipwhr
Command not found

$ man ls
# Opens the manual for `ls`
# To exit, press 'q'

$ help
# Lists available shell commands
```

---

## 📁 File & Directory Navigation

| Command                | Description                                                |
|------------------------|------------------------------------------------------------|
| `pwd`                 | Show current working directory                             |
| `ls`                  | List folders & files in the working directory              |
| `cd`                  | Move to home directory                                     |
| `cd Desktop`          | Move into Desktop directory                                |
| `cd <path>`           | Move into a specific path                                  |
| `cd ..`               | Move one level up (parent directory)                       |

---

## 🛠 File & Directory Management

| Command                             | Description                                         |
|-------------------------------------|-----------------------------------------------------|
| `mkdir <dir_name>`                 | Make new directories                                |
| `touch <file_name>`               | Create a file                                       |
| `rm <directory_name>`             | Remove a directory                                  |
| `rm <file_name>`                  | Remove a file                                       |
| `cp <source> <destination>`       | Copy file from source to destination                |
| `cp <dir_source>/* <dir_dest>`    | Copy all files from source dir to destination dir   |
| `mv <file1> <file2>`              | Rename/move file1 to file2                          |
| `cat <file_name>`                 | Display content of the file                         |
| `echo "text" > file.txt`          | Replace content in file with text                   |
| `echo "text" >> file.txt`         | Append text to file                                 |

---

## ✏️ Editing Files

| Command            | Description                        |
|--------------------|------------------------------------|
| `nano <file_name>` | Open file in nano text editor      |
| `code <file_name>` | Open file in VS Code               |

---

## 🧰 Useful Options

| Option | Description                                               |
|--------|-----------------------------------------------------------|
| `-i`   | Prompt before overwriting an existing file                |
| `-r`   | Recursively copy directories and their contents           |
| `-v`   | Show informative messages during operations               |
| `-f`   | Force action (overrides `-i` if both are used together)   |

---

## 🔧 Hash-bang (Shebang)

Place this at the top of every Bash script to indicate which shell to use:

```bash
#!/bin/bash
```

---

## ⚙️ Optional extras for customizing bash
#### Append to ~/.bash_profile for extra spacing between previous commands and the subsequent shell prompt**
```
export PS1="\n\n$PS1"
```

#### Append to ~/.bash_profile to track live command history
```
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
alias showhistory="clear; tail -n0 -F ~/.bash_history | nl"
```
* clear: clear the terminal
* tail: command for displaying the last few lines of a file
* -n0: display no lines currently in the file
* -F: watch the file for changes and display any new lines
* ~/.bash_history: command history file for bash
* | nl: line numbering

#### To display live updated command history, run this in a separate window:
showhistory

