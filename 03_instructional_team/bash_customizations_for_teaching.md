## ⚙️ Optional extras for customizing bash
These commands are what I use to setup my environment for teaching and demonstrations.
* These modifications are **not recommended** for learners

⚠️ Beware: mistakes when editing your profile script can **cause significant issues and impact your ability to use the terminal**. ⚠️

On Windows, these commands should be appended to `~/.bash_profile`.
On MacOS, these commands should be appended to `~/.zshrc`.

#### Append to the shell profile for extra spacing between previous commands and the subsequent shell prompt
```
export PS1="\n\n$PS1"
```

#### Append to the shell profile to track live command history
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

