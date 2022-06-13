---
marp: true
theme: uncover
_class: invert
paginate: true

---
<style>
    p {
        text-align: left;
        font-size: 35px
    }
    ul {
        margin: 0;
        font-size: 35px;
    }
    table {
        font-size: 35px;
    }
    ol {
        margin: 0;
        font-size: 35px;
    }
</style>


# **Unix Shell**
```console
$ echo "Data Sciences Institute"
$ echo "by: Rachael Lam"
```

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Unix`

---
##### **What is Unix?**
Unix was created in 1970 and since then has branched into other versions including Linux. Linux was created from Unix with very similar features, although there are some minor differences in commands. 

Unix shells - more specifically bash - is a powerful tool for quickly and easily navigating and manipulating files, scaling automated tasks, accessing Git and processing data.

---
##### **So what is the shell?**
The shell is any user interface/program that takes an input from the user, translates it into instructions that the operating system can understand, and conveys the output back to the user. 

There are various types of user interfaces:
- graphical user interfaces (GUI) 
- touch screen interfaces 
- command line interfaces (CLI)

---
##### **And what is bash?**
We'll be focusing on command line interfaces (CLI), more specifically `bash`, which stands for **B**ourne **A**gain **SH**ell.

We'll also need a terminal emulator to interact with the shell. This is most likely called *terminal* on our menu.

---
##### **Let's get started!**
First, we'll open our terminal. As mentioned earlier, this is most likely called *terminal* and can be found by searching our computer, which on a Mac would be through `cmd + space`

Let's take a look at the terminal. What do we notice?
- last login
- name
- location
- shell

---
##### **Looking at the Shell**
If we type `echo $SHELL` in our terminal, the output will tell us what shell we are working with. Most often, our shell will already be `bash` but in newer Macs, it could be `zsh` which is almost identitcal to bash. We can also see where `bash` is located by typing:
- `whereis bash`
- `whence bash`
- `which bash`

---
Let's start with a few commands and see what happens in our terminal.
```console
$ echo Rachael
```
```console
$ date
```
```console
$ cal
```
```console
$ lksjfs
````

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
- What happens when we type something that does not exist?
- What happens with errors?

---
<!--_backgroundColor: #2C2F3A -->
## **Navigate Files / Directories**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Files`

---
Knowing the different types of files available helps us better understand how to navigate and manipulate them.

- Regular files are text files with readable characters. 

- Executable files are programs that are invoked as commands. 

- Shell scripts are executable files that we can read whereas bash is a non-human-readable executable file.

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Directories`

---
Directories are files that are like folders which contain other files and directories (subdirectories), creating a hierarchical structure.

- We can think of the structure of directories as a tree with the top of the tree being the *root*.

- All files can be named and found in relation to the *root* by listing the directory names in order from the root, separated by slashes, followed by the file's name.

---
Let's try three commands that help us navigate our system:
1. First, let's run the code below and see what happens:
```console
$ pwd
```
`pwd` prints our working directory. If we ever need to know where we are, we can execute this command.

---
2. Now, let's run the code below and see agian what happens:
```console
$ cd
```
By default, `cd` changes your working directory to your home directory. You can also use `cd` to set your working directory by including the desired pathname
```console
$ cd Desktop
```
---
In the previous example, we were able to just state `Desktop` because it is a directory in our working directory. If we changed our working directory to `Desktop`, and then wanted to change it again to a directory in `Desktop`, we could again just specify the folder. 

If we wanted to change the working directory to a directory outside of our working directory, we would need to specify a pathname:
```console
$ cd /Users/rachaellam/Desktop
```

---
3. To know what files and folderes exist in our working directory, we can use the code below:
```console
$ ls
```
We can add a pathname at the end to list the contents of a specified directory.

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Paths`

---
As we've seen, directory names separated by slashes are paths. There are two types of paths, *absolute* and *relative*.

- An absolute pathname begins at the root directory and includes each directory, separated by slashes until the desired directory or file is reached.

- A relative pathname starts from the working directory and uses symbols `.` or `..` to represent relative positions in the file tree.

---
Using `cd` and `pwd` let's take a look at how we can use absolute and relative pathnames.
```console
$ cd
$ pwd
```
```console
$ cd Desktop
$ pwd
```
```console
$ cd ..
$ pwd
```

---
Here's another example using the `/usr` pathname.
```console
$ cd /usr/bin
$ pwd
```
```console
$ cd /usr
$ pwd
```
```console
$ cd ..
$ pwd
```

---
Let's now try move through some directories to get comfortable. Try out lots of different paths depending on the file structures of your computer. Try getting into different directories from different parent directories. The tilde notation `~` in the examples below refer to our home directory.
```console
$ cd ~/Desktop
$ pwd
```
```console
$ cd ~/Desktop/dir1
$ pwd
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Options and Arguments`

---
Options and arguments are used to write commands that can make changes to our system. The syntax is:
```console
$ command -option argument
```
Options can also be combined, which we'll briefly see now but learn more about a bit later.

---
There are two ways to write an `-option`:
1. Short option: one dash followed by a single character
2. Long option: two dashes followed by a word

Some examples:

`-a` or `--all`
`-d` or `--directory`
`-r` or `--reverse`

---
Let's try these lines of code and see what happens:
```console
$ ls -l
```
```console
$ ls -lt
```
```console
$ ls -lt --reverse
```
`-l` long format
`-t` modification time
`-reverse` reverse the sort order
Notice how `-lt` is actually a combination of multiple options.

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Wildcards`

---
Wildcards give us the ability to rapidly specify groups of filenames based on patterns of characters. Let's look at a few examples below:

`*`  → matches any character

`?` → matches any single character 

`[characters]` → matches any character that is in the set

`[!characters]` → matches any character that is not in the set

---
Some other helpful character wildcards are:
`[:digit:]` → matches any numeral
`[:lower]` → matches any lowercase letter
`[:upper:]` → matches any uppercase letter

---
Let's try a few in our terminal:
```console
$ ls * 
```
```console
$ ls a*.txt
```
```console
$ ls [abc]*
```
```console
$ ls [[:upper:]]*
```
```console
$ ls [![:digit:]]*
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_backgroundColor: #2C2F3A -->
## **Working with** 
## **Files / Directories**

---
We're going to learn some basic commands to begin some preliminary coding. We'll also be using these throughout the module, so it's important to understand how they work now:
- create directory `mkdir`
- create file `touch`
- copy `cp`
- move and rename `mv`
- remove `rm`

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Commands`

---
##### **mkdir**
First let's make a directory. It's important to remember what directory you're working in currently, because that's where the new directory will be made. Let's assume for now, we're working on our desktop.
```console
$ mkdir directory
```
We can also create multiple directories at the same time:
```console
$ mkdir dir1 dir2 dir3
```

---
##### **touch**
We can also make new files from the command line. This is particularly useful when we want to make scripts, which we'll learn a bit later. Using `touch`, we can make a new file in our working directory.
```console
$ touch file1
```
We can also create a specific file type by adding the extension:
```console
$ touch file1.sh
```

---
##### **cp**
Now we're going to copy a file that we have on our desktop. It can be any file but remember to include the extension or if it has multiple characters, special characters and spaces, to wrap it in quotes.
```console
$ cp file1 file2
```
We can also copy files or directories into a directory.
```console
$ cp file1 dir1
```

---
And all files from one directory into another using wildcards:
```console
$ cp dir1/* dir2
```
What does the `/*` in this command mean?

---
There are some useful `-options` that accompany `cp`:
Option | Description
:-----|:------
`-i` | Before overwriting an existing file, prompt the user for confirmation. If this option is not specified, `cp` will silently overwrite files.
`-r` | Recursively copy directories and their contents. This option is required when copying directories.
`-v` | Display informative messages as the copy is performed.

---
##### **mv**
The `mv` command enables us to move and rename files and directories, depending on how it's used. In the example below, `mv` renames file1 to file2.
```console
$ mv file1 file2
```
Here, `mv` moves file1 to dir1
```console
$ mv file1 dir1
```

---
We can also move directories into other directories:
```console
$ mv dir1 dir2
```
In this case, if `dir2` **exists**, `dir1` will be moved to `dir2`. If `dir2` does **not exist**, it will be created and `dir1` will be moved to the newly created `dir2`. In both cases, the entire directory will be moved to another/new directory, rather than the contents.

---
Let's say we're in the directory `Desktop` and we just moved `file1` into `dir1` but now we want to put it back in `Desktop`. How would we move a file out of a directory into another one? Unfortunately we **can't** just say
```console
$ mv file1 Desktop
```
because `file1` does not exist in `Desktop` any more and the command will try and rename `file1` to `Desktop`.

---
The answer involves using pathnames and the tilde `~` notation:
```console
$ mv dir1/file1 ~/Desktop
```
If we just wanted to move `file1` into `dir2` (if `dir2` is in our working directory), we could type:
```console
$ mv dir1/file1 dir2
```

---
What if we want to move just the contents of `dir1` to another directory rather than the whole folder? HINT: it is very (exactly) similar to copying (`cp`).

---
```console
$ mv dir1/* dir2
```
This is a combination of the directory `dir1`, pathnames `/` and wildcards `*`. Here, `dir1/*` takes the all the contents of `dir1` and puts it in `dir2`. 

We could also use the same technique to specify certain files to move rather than all of them. How do you think this would be done?

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions**
- We're starting to combine our knowledge of files, directories and pathnames with some basic commands. How do we feel up to this point?

---
##### **rm**
To remove files we use the command `rm`. Because we're now deleting files, it's important that you're sure of what you're deleting because **there is no way to undo**. Fortunately!! there are ways to do this.
```console
$ rm file1
```
Without specifying any `-options`, `file1` will be deleted without any feedback.

---
To ensure we want to delete something, we can use the option `-i` (interactive) that we learned earlier.
```console
$ rm -i file1
```
This will prompt a question asking us if we want to delete `file1`. We can respond with `y` if yes and `n` if not.

---
If we want to delete a directory, we need to use the option `-r` as we did when copying (`cp`). This will recursively delete everything inside of the directory and the directory itself.
```console
$ rm -r dir1
```
If we're specifying multiple deletions and a directory does not exist, the shell will tell us. If we don't want that message, we can add the `-option`, `-f` (force). Force will override `-i` if it is included.

---
1. How do you delete multiple directories?

2. What happens if you delete multiple directories with `-i`?

3. What happens if you delete multiple directories with `i` but one does not exist?

---
Remember, it's extremely important to remember that you cannot undo `rm`. This means, if you start using wildcards to specify filenames and don't include `-i`, you could delete things by accident. For example, let's say you want to delete all `.txt` files in a directory:
```console
$ rm *.txt
```
If you accidently add a space between `*` and `.txt`, the `rm` command will delete all the files in the directory and then try to find a `.txt` file which does not exist because it delete everything.

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Input / Output`

---
##### **Standard Input/Output**
Each program invokes the standard input, output and error.

We can think of the standard input default as coming from the keyboard and if we think of everything as a file, a command such as `ls` will result in a file called *standard output* and the status message to a file called *standard error*. By default, both are linked to the screen and not saved to a disk file.

---
##### **Input/Output Redirection**
Input/Output redirection allows us to change where the input comes from and where the output goes to, such as storing the output of a command into a file. We can do this using the redirection operator `>`.
```console
$ ls -l /usr/bin > ls-output.txt
```
Here we have redirected the output of `ls -l /usr/bin` to a `.txt` file called *ls-output.txt*. 

---
We can now see the details of that file and if it worked:
```console
$ ls -l ls-output.txt
```
By looking at the details, we can see that the file was created and it a fairly large text file, indicating that something was written to it.

---
If we specify a directory that does not exist, we receive the standard error:
```console
$ ls -l /bin/usr > ls-output.txt
```
Why was the standard error not written to the `.txt` file?
What happened to our *ls-output.txt* file?

---
Although the standard error was not written to the `.txt` file, the destination file is always written from the beginning, therefore, the redirection began to write the file and once noticed there was an error, stopped, resulting in an empty file.

So how do we append rather than rewrite? By using the redirection operator `>>`.
```console
$ ls -l /usr/bin >> ls-output.txt
```

---
If we want to redirect the standard error, we need to use the redirection operator `2>`
```console
$ ls -l /bin/usr 2> ls-error.txt
```
If we want to redirect both the standard output and standard error to one file, we have two options.
1. Use `2>&1` at the end of the command.
```console
$ ls -l /bin/usr > ls-output.txt 2>&1
```
2. Use `&>` in place of `>`
```console
$ ls -l /bin/usr &> ls-output.txt
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions**

---
##### **cat**
`cat` takes one or more files and copies them to standard output. Using the *ls-output.txt* created earlier, we can see how that's done:
```console
$ cat ls-output.txt
```

---
We can also use it to join files togther. Let's say I have two files, `file1` and `file2` and I want to combine them into a file called `file3`:
```console
$ cat file1 file2 > file3
```
Now the contents of file1 and file2 should be combined.

---
We can also use `cat` to add to a `.txt` file.
```console
$ cat > new_cat.txt
```
Now we can type the text that we want in the file. Once we're finished, we can use `CTRL-D` to exit.

What would be the difference between `$ cat > new_cat.txt` and `$ cat >> new_cat.txt`?

---
Finally, we can redirect the standard input from the keyboard to the file *new_cat.txt*
```console
$ cat < new_cat.txt
```
This is almost identitcal to just typing `$ cat new_cat.txt` but we can see later how it could be more useful.

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_backgroundColor: #2C2F3A -->
## **Pipes / Filters** 

---
We use pipelines to read data from standard output and send to standard input using the pipe operator`|`. This means the standard output of one command can be piped into the standard input of another. 

Several commands put together in a pipeline are often referred to as filters. Filters take an input, change it and then output it.

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Commands`

---
Let's learn a few more commands that will help us further understand pipelines and filters. We'll learn:
- extract columns from output `cut`
- sort lines of text `sort`
- report or omit repeated lines `uniq`
- print lines matching a patter `grep`
- search directories and subdirectories for files `find`
- ouput the first part of a file `head`
- output the last part of a file `tail`

---
##### **cut**
Let's look at a `csv` to see how we can initially see our data. Because it's a `csv`, each line is separated by a comma. Let's first read that file using `cat`:
```console
$ cat parking_data.csv
```
We'll see a lot of text, so let's make some sense of it using cut.

---
To use cut, I need to pass a couple options:
1. `-d` which cuts the text based on what follows. For example, `-d:` will cut based on colons or `-d" "` will cut based on a space.
2. `-f`, which extracts a particular field based on what follows. For example, `-f1` will take the first field or `-f2` will take the second field and so on.

---
In this example, I'm taking the file *parking_data* and cutting it based on colons and then only extracting the first field.
```console
$ cut -d, -f1 < parking_data.csv
```
What happens if I add another `-f` option? What does this do?
```console
$ cut -d, -f1 -f2 < parking_data.csv
```
How would I specify more than three fields?

---
##### **sort**
How can we make our previous example more readable? 

One answer is to use the sort feature. We can pipe this with the cut feature:
```console
$ cut -d, -f1 < parking_data.csv | sort
```

---
##### **uniq**
Additionally, I can make the above command even more readable by removing any duplicates with `uniq`
```console
$ cut -d, -f1 < parking_data.csv | sort | uniq
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
##### **grep**
`grep` is a powerful tool for finding patterns in text files. The syntax is:
```console
$ grep pattern [file...]
```
In our case, we're going to use it with our previous example and pipe it with other commands:
```console
$ cut -d, -f1 parking_data.csv | sort | uniq | grep FIRE
```
The results are all patterns of FIRE in the text file.

---
##### **find**
Another useful use for `grep` is to find files in directories. `grep` is nicely combined with `find` for this feature.

```console
$ find ~/Desktop/dir1 | grep cat
```
Here we're searching in the directory *dir1* with the pattern *cat*. This would be helpful if we wanted to know if there were any files with the word cat in the filename.

---
##### **head / tail**
We can also extract the first and last part of files using `head` and `tail`. We can also add the option `-n` followed by a number to extract a certain number of lines.
```console
$ head -n 5 ls-output.txt
```
```console
$ tail -n 5 ls-output.txt
```

---
`head` and `tail` can also be used in pipelines:
```console
$ cut -d, -f1 < parking_data.csv | sort | uniq | head -n 5
```
```console
$ cut -d, -f1 < parking_data.csv | sort | uniq | tail -n 5
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Expansions`

---
Expansion uses special characters to expand upon something before the shell processes it. We have learned a few expansions so far such as the tilde `~` and wildcards `*`. We've also seen some character wildcards `[characters]`. 

Expansions are another feature that help us when we're manipulating and working with files and directories.

Other examples of expansions are:
- arithmetic expansion
- brace expansion

---
##### **Arithmetic Expansion**
Arithmetic expansion basically makes the shell a calculator. 
The syntax is:

`$((expression))`

For example:
```console
$ echo $((2 + 2))
```

Arithmetic expressions can nested:
```console
$ echo $(($((2 + 2)) * 3))
```

---
Just for reference, here is a list of the arithmetic operators:
Operator | Description
:-----|:------
`+` | Addition
`-` | Subtration
`*` | Multiplication
`/` | Integer division
`**` | Exponentiation

---
##### **Brace Expansion**
Brace expansions allow us to create multiple text strings from a pattern containing braces. Here are a few examples:
```console
$ echo Test-{A,B,C}-Example
```
```console
$ echo Number_{1..5}
```
```console
$ echo {Z..A}
```
Brace expansions can also be nested:
```console
$ echo a{A{1,2},B{3,4}}b
```

---
We can use brace expansion to help make multiple directories using `mkdir`.
```console
$ mkdir dir-{1..3}
```
This command makes 3 directories named *dir-1*, *dir-2* and *dir-3*

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Quoting / Backslashing`

---

Quoting suppresses unwanted expansions. We can use double quotes, single quotes or backslashes:

- Double quotes force special characters to lose their meaning and are treated as ordinary characters except for
 `*` `\` `'`
- Single quotes suppress all expansion
- Backslashes are used to escape single characters

---
Many times there will be file names or directories that are named with spaces. In this case, we'll need to use double quotes so that the shell can read it.

Using `touch` we can create a text file named something separated with two words:
```console
$ touch "two words.txt"
```
We can then see the details of the file we just created:
```console
$ ls -l "two words.txt"
```

---
If we want to rename the text, we would do as follows:
```console
$ mv "two words.txt" two_words.txt
```

---
Let's see what these three examples do in shell:
```console
$ echo '2 * 3 > 5 is an equation'
```
```console
$ echo '2 * 3 > 5' is an equation
```
```console
$ echo 2 \* 3 \> 5 is an equation
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Command Line Editing`

---
Getting familiar with command line editing can save you time. Bash uses a library called Redline to use command line editing

There are many shortcuts and you don’t have to memorize them all, just use the ones that you feel are best. There are even more shortcuts that you can read about in the textbooks!

---
##### **Character Commands**
Command | Description
:-----|:------
CTRL-B | Move one character backwards
CTRL-F | Move one character forwards
DEL | Delete one character backwards
CTRL-D | Delete one character at cursor location

---
##### **Word Commands**
Command | Description
:-----|:------
ESC-B | Move one word backwards
ESC-F | Move one word forwards
ESC-DEL | Delete one word backwards
ESC-D | Delete one word forwards
CTRL-Y | Undo

---
##### **Line Commands**
Command | Description
:-----|:------
CTRL-A | Move to beginning of the line
CTRL-E | Move to end of the line
CTRL-K | Delete text from the cursor to end of line
CTRL-U | Delete text from the cursor to the beginning of the line

---
##### **History Line Commands**
Command | Description
:-----|:------
CTRL-P | Move to the previous line in your history of commands
CTRL-N | Move to the next line in your history commands
`!!` | Repeat the last command

---
Command | Description
:-----|:------
``!number`` | Repeat history list item number
`!string` | Repeat last history item starting with string
`!?string` | Repeat last history item containing string

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Completion Command`

---
Completion commands autocomplete your command if it exists by hitting `tab`. If it does not exist, the command will not be able to complete. 

If multiple exist, the command will also not be able to complete because it will not know which one to choose. 

For example, let's say we have two files called `file1` and `file2`. If would not be able to use autocomplete because the shell will not know which to choose until the last character.

---
If we have two files, one called `foot.txt` and one called `file.tx`. This command would not be able to autocomplete:
```console
$ ls f
```
But this one will:
```console
$ ls fil
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_backgroundColor: #2C2F3A -->
## **Shell Scripts** 

---
##### **Shell Scripts**
Shell scripts allow us to combine several commands into one file, rather than one by one on the command line.

The shell will read the script just as if you were to write the command on the command line.

Most things that can be done in the shell script can be done on the command line and vice versa.

---
##### **Writing Shell Scripts**
There are three important considerations when writing the shell script
1. **Write a script:** scripts are ordinary text files. You can use a text editor that will provide syntax highlighting (color coding elements of the script). It can help find errors but writing in TextEdit is possible.
2. **Make a shell script executable:** set the script permissions to allow it to be executed
3. **Put the shell script somewhere the shell can find it:** the shell script automatically searches certain directories for executable files when no explicit pathname is specified.

---
##### **Set Up**
Open either TextEdit or your text editor of choice. Some popular programs are Sublime Text, Vim, Atom and Notepad++. 

If you want to see the syntax highlighting, you might have to save your script as a `.sh` file. Without doing this, your file will just look like a regular `.txt` file.

Once you open your text editor and save it, we can begin our first script!

---
##### **Script File Format**
We must first tell the shell the name of the interpreter that should be used to execute the script. This is marked by using a shebang: `#!`

Throughout the script, you can and **should** use `#` to make comments. Comments make your code more readable and can help you understand your code when you come back to it.

---
```bash
#!/bin/bash

# this is our first comment

echo "This is our first script!"
```
Here we can see we've told the shell to use`/bin/bash` using the shebang `#!`
We've also added a comment using `#`
And finally, something quite familiar, we have our first line of script using `echo`

---
##### **A Note on Commenting**
Commenting is important not just so you can understand your own work, but also so other can understand your work in collaborative projects. It also helps make your code reproducible.

Comments can be inline:
```bash
echo "Hello World" #this is an inline comment
```
or as comment blocks:
```bash
#this is a comment block
echo "Hello World"
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
##### **Executable File Permission**
In order to execute our file, we have to add file permissions:

`chmod` helps make our script executable
`775` is used to make scripts that everyone can execute
`700` is used to make scripts that only the owner can execute

---
Here, `chmod` is combined with `775` so that everyone can execute the script:
```console
$ ls -l first_script.sh
```
```console
$ chmod 775 first_script.sh
```

---
##### **Script File Location**
In order to run our script, we have to call it using `./` in front of the script filename (`./script`).

File location is important to run your script. If just `script` was written, the shell would not be able to find the script and try read it as a command, ouputting `command not found`.

Running `echo $PATH` helps us see what directories are being searched for the script.

---
If we want to run our script without `./`, we can create a `/bin` for our script, move our script into the bin folder and then run it. It's important to note that we have to make this bin in our home directory. If we made it on our Desktop, the script would still not be found.
```console
$ mkdir bin
$ mv first_script.sh bin
$ first_script.sh
```
In this block of code, we're making the bin folder using `mkdir`, moving the script into the bin with `mv` and then running the script without `./`.

---
##### **Good Locations for Scripts**
For personal use, a good place to put your script is `/bin`.

For everyone's access, it's better to put scripts in `/usr/local/bin`.

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_backgroundColor: #2C2F3A -->
# **Shell Functions** 

---
##### **Functions**
Functions are a good way to break down code into smaller, more manageable chunks. Each chunck can represent a task. 

For example, let's say your entire process is make pasta. It can be broken down into:
1. Prepare vegetables
2. Make sauce
3. Cook pasta
4. Serve

---
Each of these steps can be expanded further into sub processes. Cook pasta can be:
1. Fill pot with water
2. Boil water
3. Measure pasta
4. Add pasta to boiling water
5. Cook for 8-12 minutes
6. Strain

---
Functions have two syntactic forms:
```bash
function name {
    commands
    return
}
```
```bash
name () {
    commands
    return
}
```
`name` is the name of the function 
`commands` are the commands contained in the function

---
Let's write our first function:
```bash
#!/bin/bash

function funct {
    echo "Step 2"
    return
}

#program starts here

echo "Step 1"
funct
echo "Step 3"
```
What do you think this function will output?

---
Let's save and run this function in our terminal to see what happens.

Here's a good time to recap how to save, grant permissions and run the script.
`chmod` - permissions command
`775` - grant permissions to everyone
`700` - grant permissions to yourself
`/bin` - where to save permissions

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Variables`

---
##### **Global Variables**
Let's make our script more complex with some variables. We can first define variables directly through the terminal.
```bash
$ foo="something cool"
$ echo $foo
```
Notice how in order to call the variable we need to add `$` before the variable. The quotes are not necessary if the value of the variable doesn't include spaces when defining it. If we did not include the quotes here, we would receive an error.

---
Now let's add some global variables to our script:
```bash
#!/bin/bash

step="Step 2"

function funct {
    echo $step
    return
}

#program starts here

echo "Step 1"
funct
echo "Step 3"
```
What do we think will be the output in this example?

---
##### **Local Variables**
Local variables are variables that are contained within the function. Because they're contained, they can have names that already exist in the shell globally or within other shell functions.

---
```bash
#!/bin/bash

foo=0 # global variable foo
funct_1 () {
    local foo # variable foo local to funct_1
    foo=1
    echo "funct_1: foo = $foo"
}

funct_2 () {
    local foo # variable foo local to funct_2
    foo=2
    echo "funct_2: foo = $foo"
}

echo "global:  foo = $foo"
funct_1
echo "global:  foo = $foo"
funct_2
echo "global:  foo = $foo"
```

---
What would happen if we removed `local`?
```bash
#!/bin/bash

foo=0 # global variable foo
funct_1 () {
    foo=1
    echo "funct_1: foo = $foo"
}

funct_2 () {
    foo=2
    echo "funct_2: foo = $foo"
}

echo "global:  foo = $foo"
funct_1
echo "global:  foo = $foo"
funct_2
echo "global:  foo = $foo"
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Parameters`

---
##### **Positional Parameters**
Positional parameteres are built in parameters that allow our programs to get access to the contents of the command line. This is extremely valuable when we are creating scripts and then want to pass a parameter through the script from the command line.

If our code has more than 9 positional parameters, you need to enclose the positional parameter in curly brackets `${10}`

Let's create a script to see how this works:

---
```bash
#!/bin/bash

echo "
Number of arguments: $#
\$0 = $0
\$1 = $1
\$2 = $2
\$3 = $3
\$4 = $4
\$5 = $5
\$6 = $6
\$7 = $7
\$8 = $8
\$9 = $9
"
```

---
In the example, you may notice that we haven't given `$0` any specific value.
Let's try run the script a couple ways through the command line to see what this means:
1. Run the script with arguments `a b c d`.
2. Run the script with any arguments of your choice.

What do we notice?

---
##### **$\* and $@**
`$*` → Expands into the list of positional parameters, starting with 1. When surrounded by double quotes, it expands into a double quoted string containing all of the positional parameters, each separated by the first character of the IFS shell variable (by default a space character).
`$@` → Expands into the list of positional parameters, starting with 1. When surrounded by double quotes, it expands each positional parameter into a separate word surrounded by double quotes.

---
Let's take a look at this code piece by piece:
```bash
print_params () {
    echo "\$1 = $1"
    echo "\$2 = $2"
    echo "\$3 = $3"
    echo "\$4 = $4"
}

pass_params () {
    echo -e "\n" '$* :'; print_params $*
    echo -e "\n" '"$*" :'; print_params "$*"
    echo -e "\n" '$@ :';   print_params $@
    echo -e "\n" '"$@" :'; print_params "$@"
}

pass_params "word" "words with spaces"
```

---
1. Here we have two functions: `print_params ()` and `pass_params ()`. `pass_params ()` calls on the function `print_params ()` within its function.
2. In the first function, `echo` is printing the line inside the double quotes. The `\` in front of `$1` escapes the `$`, thus losing its meaning, as we learned earlier.
```bash
print_params () {
    echo "\$1 = $1"
    echo "\$2 = $2"
    echo "\$3 = $3"
    echo "\$4 = $4"
}
```

---
3. In the second function, `echo` again is printing the line inside the single quotes. `"\n"` is adding a tab at the beginning of the line for readability. It is then calling on the first function (`print_params ()`) with the argument `$*`. The second echo is calling the first function but with the argument `$*` in double quotes. This is repeated for `$@`
```bash
pass_params () {
    echo -e "\n" '$* :'; print_params $*
    echo -e "\n" '"$*" :'; print_params "$*"
    echo -e "\n" '$@ :';   print_params $@
    echo -e "\n" '"$@" :'; print_params "$@"
}
```

---
4. In the final part of the code, we're calling on the `pass_params ()` function and passing two arguments: `"word"` and `"words with spaces"`.
```bash
pass_params "word" "words with spaces"
```

---
Let's see what happens's when we run the script in terminal. Remember, we don't have to pass any arguments in the command line because we have done so in our script.

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
Let's take a look at another example. In this example we'll get a greater understanding of variables and positional parameteres:
```bash
function afunc {
  echo in function: $0 $1 $2
  var1="in function"
  echo var1: $var1
}

var1="outside function"

echo var1: $var1
echo $0: $1 $2
afunc funcarg1 funcarg2
echo var1: $var1
echo $0: $1 $2
```

---
Let's break it down again:
1. In our first function called `afunc`, using `echo` we will print `in function:` and pass 3 positional parameters. We will then define the variable `var1` and call it `"in function"` and print it using `echo` again.
```bash
function afunc {
  echo in function: $0 $1 $2
  var1="in function"
  echo var1: $var1
}
```
2. Outside of the function, we'll create another variable also named `var1` and give it the value of `"outside function"`
```bash
var1="outside function"
```

---
3. We'll then add the program. 
a) `echo`, we'll print `var1`
b) Print 3 positional paramaeters
c) Call the function with two arguments
d) Print `var1` again
e) Print 3 positional parameters again 
```bash
echo var1: $var1
echo $0: $1 $2
afunc funcarg1 funcarg2
echo var1: $var1
echo $0: $1 $2
```

---
Let's run it in our terminal without any additional arguments and see what the output is.
- Why did `echo $0: $1 $2` only output one argument?
- Why did `var1` change the third time to `inside function` rather than `outside function`?

---
Now let's change and add a few things to see what happens:
- In our terminal, what happens if we pass two arguments by entering `ascript.sh arg1 arg2` with `ascript.sh` being the name of our script and `arg1 arg2` being two random arguments?
- What happens if we add `local` to our function?

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
##### **Parameter Expansion**
Let's discuss the difference between `$a` and `${a}`

`$a` on it's own is fine, but when placed next to another string, it can confuse the shell. For example:

- `$a_file` the shell will try to expand a variable named `a_file` rather than `a`

- `${a}_file` the shell will now try to expand the variable  `a`

This can help us be more flexible when navigating and manipulating files and directories.

---
Let's look at the code below to see how this helps us:
```console
$ filename="myfile"
$ touch $filename
$ mv $filename ${filename}1
```
This block of code creates a file based on our defined variable and then renames it with the same variable but with an additional component.

---
Parameter expansion also help us if our variables are unset (ie. do not exist) or are empty. Let's take a look at a couple examples in the next few slides.

---
1. `${parameter:-x}` If parameter is unset or empty, expansion results in the value of *x*. If it's not empty, it results in the value of the parameter
```console
$ foo=
$ echo ${foo:-"something else"}
$ echo $foo
$ foo=bar
$ echo ${foo:-"something else"}
$ echo $foo
```
Through this sequence of commands we can see that when `$foo` is empty, `:-` fills the variable with `"something else"`. Once we define the variable, `:-` results in our defined variable.

---
2. `${parameter:=x}` If parameter is unset or empty, expansion results in the value of *x* and the value of *x* is assigned to the parameter. If it's not empty, it results in the value of the parameter
```console
$ foo=
$ echo ${foo:="something else"}
$ echo $foo
$ foo=bar
$ echo ${foo:="something else"}
$ echo $foo
```
We can see that when `$foo` is empty, `:=` assigns the variable with `"something else"`. If we define the variable again, `:-` results in our second defined variable.

---
3. `${parameter:?x}` If parameter is unset or empty, this expansion causes the script to exit with an error, and the contents of *x* are sent to standard error. If parameter is not empty, the expansion results in the value of parameter.
```console
$ foo=
$ echo ${foo:?"something else"}
$ echo $?
$ foo=bar
$ echo ${foo:?"something else"}
$ echo $?
```
We can see that when `$foo` is empty, `:?` gives us an error which we can see as `echo $` outputs `1`. If we define the variable again, `:?` results in the value of our variable.

---
4. `${parameter:+x}` If parameter is unset or empty, the expansion results in nothing. If parameter is not empty, the value of *x* is substituted for parameter; however, the value of parameter is not changed.
```console
$ foo=
$ echo ${foo:+"something else"}
$ echo $foo
$ foo=bar
$ echo ${foo:+"something else"}
$ echo $foo
```
Here, `:+` resulted in an empty output and the value of `$foo` remains empty. If we define the variable, `:+` will still ouput what we defined, but it will not reassign the variable perminently.

---
##### **String Operators**
String operators are extemely valuable for operations on pathnames. They can help extract parts of pathnames, especially if they follow a pattern. Many pathnames typically follow patters, such as all extensions are preceeded with `.`.

Some character expansions are:
1. `${#parameter}`
2. `${parameter:offset}`
3. `${parameter:offset:length}`

---
1. `${#parameter}` expands into the length of the string contained by the parameter.
```console
$ foo="Toronto needs more trees"
$ echo "'$foo' is ${#foo} characters long."
```

---
With the following expansions, we can extract a portion the string contained by the parameter.

2. `${parameter:offset}` will extract characters from *offset* characters to the end of the string. For example, counting from the beginning of the string, the *n* of *needs* is 8 characters from the beginning. Because did not specify an end, `echo` will print from *needs* onwards.
```console
$ foo="Toronto needs more trees"
$ echo ${foo:8}
```

---
3. `${parameter:offset:length}` will specify the length that we want to extract. This length is counted not from the beginning of the string, but from the offset of the string.
```console
$ foo="Toronto needs more trees"
$ echo ${foo:8:5}
```
We can see that from the beginning of the string, *n* is 8 characters in, and from *n*, *s* of *needs* is the 5th character from *n*. Therefore, our ouput will be *needs*.

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
Let's now see how to use patterns in our parameter expansions. There are several ways we can achieve this:

1. `${parameter#pattern}`
2. `${parameter##pattern}`
3. `${parameter%pattern}`
4. `${parameter%%pattern}`

---
1. `${parameter#pattern}` removes the shortest leading portion of the string contained in *parameter* defined by the *pattern*.
```console
$ foo=/User/name/Desktop/file.txt.zip
$ echo ${foo#/*/}
```
In this example, we've defined foo as a file with an extension. The expansion matches any (`*`) pattern of `/*/` and returns the shortest leading portion.

---
2. `${parameter##pattern}` is very similar to the previous expansion except it removes the longest leading portion of the string.
```console
$ foo=/User/name/Desktop/file.txt.zip
$ echo ${foo##/*/}
```
Very similar to the previous example, the expansion matches any (`*`) pattern of `/*/` and returns the longest leading portion.

---
3. `${parameter%pattern}` removes the shortest ending portion of the string rather than the beginning.
```console
$ foo=/User/name/Desktop/file.txt.zip
$ echo ${foo%.*}
```

4. `${parameter%pattern}` removes the longest ending portion of the string.
```console
$ foo=/User/name/Desktop/file.txt.zip
$ echo ${foo%%.*}
```

---
What happens if we change our pattern to `#*_`?

Let's pretend a file named "rachaels_file" and we want to know its extension. How would we do that?

What if our file was name "rachaels file"

---
We can also use expansions to replace the contents of the parameter with a string based on the pattern.

1. `${parameter/pattern/string}` replaces only the first occurence of  pattern.
2. `${parameter//pattern/string}` replaces all occurances.
3. `${parameter/#pattern/string}` requires the match to occur at the beginning of the string to replace it.
4. `${parameter/%pattern/string}` requires the match to occur at the end of the string to replace it.

---
Let's see how this would work:
```console
$ foo="MP3.MP3"
```
```console
$ echo ${foo/MP3/mp3}
```
```console
$ echo ${foo//MP3/mp3}
```
```console
$ echo ${foo/#MP3/mp3}
```
```console
$ echo ${foo/%MP3/mp3}
```

---
Can you think of when this might be helpful?

Let's say I have a a named "rachaels cool file". I want to rename them because spaces cause problems in filenames. How would I do this?

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
##### **Arithmetic Assignment**
We have seen assignment before with examples such as `foo=5`. This is a simple assignment but we can also add complexity to this assignment with other operators.
- `$((parameter += x))` assigns the parameter to itself `+` x
- `$((parameter -= x))` assigns the parameter to itself `-` x
- `$((parameter *= x))` assigns the parameter to itself `*` x
- `$((parameter /= x))` assigns the parameter to itself `/` x

---
We can also increase or decrease our parameters by one.
- `$((parameter++))` increases parameter by one after the parameter is retruned
- `$((parameter--))` decreases the parameter by one after the parameter is returned
- `$((++parameter))` increases parameter by one before the parameter is returned
- `$((--parameter))` decreases parameter by one before the parameter is returned.

---
These are very subtle changes so let's see what we mean after and before a parameter is returned:
```console
$ foo=1
$ echo $((foo++))
$ echo $foo
```
```console
$ foo=1
$ echo $((++foo))
$ echo $foo
```

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions**

---
##### **Command Substitution**
So far we've learned how to get values into variables by using assignment statements (`x=5`) and positional parameters (`x=$1`). Another way is command substitution which allows you to use the standard output of the command as if it were a variable.

---
Let's say we want to assign a variable to the output of a command so that we can apply another command to that output. In this particular case, we want to make a variable equal all files beginning with *t*. We then want to apply a sort command on that variable:

```console
$ x=$(find t*)
$ echo $x | sort
```

Although this seems quite simple now, we'll see how this can be extremely powerful when we move into flow control.

---
<!--_backgroundColor: #2C2F3A -->
# **Flow Control** 

---
Flow control allows programs to "change directions" based on the results from a given input.

Bash supports several constructs:

- `if/else`
- `while` / `until`
- `case` 
- `for`

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `if / else`

---
`if/else` is a conditional statement that chooses whether or not to do something based on a true or false statement.

```bash
if condition; then
    commands

[elseif condition; then
    commands...]

[else
    commands]

fi
```

---
Here, we've assigned `x` to the value `5`. We've then written an `if/else` statement that asks if `x` is equal to `5` than tell us that `x` equals `5`. Otherwise (`else`), tell us that `x` does not equal `5`
```bash
x=5

if [ $x = 5 ]; then
    echo "x equals 5."

else
    echo "x does not equal 5."

fi
```

---
Let's take a look at a more practical example: we want to know if there are any files in our directory that contain spaces.

```bash
#!/bin/bash

cd ~/Desktop/dir1

if [[ -n $(find t* | grep " ") ]]; then
	echo "A file contains a space"
else
	echo "No files contain a space"
fi
```

---
First we've changed our working directory to *dir1*:
```bash
cd ~/Desktop/dir1
```
We then utilized command substitutions that we've just learned by storing the output of files that contain a space. The `-n` option checks if the length of of a string is **nonzero**:
```bash
-n $(find t* | grep " ")
```

---
By wrapping our output in an if statement, we're stating:
1. `if` the value of `$(find t* | grep " ")` is nonzero, then print (`echo`) `"A file contains a space"` 
2. Otherwise (`else`), print (`echo`) `"No files contain a space"`

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions**

---
##### **Control Operators**
Control operators (`&&` and `||`) allow you to test more than one thing at a time. Their syntax is:
```bash
if command1 && command2; then
    ...
fi
```
```bash
if command1 || command2;  then
    ...
fi
```

---
With the `&&` operator, command1 is executed and command2 is executed only if command1 is **successful**

With the `||` operator, command1 is executed and command2 is executed only if command1 is **unsuccessful**

---
Example of `&&`
```bash
filename=$1
word1=$2
word2=$3

if grep $word1 $filename && grep $word2 $filename; then
    echo "$word1 and $word2 are both in $filename."
fi
```

---
Using positional parameters that we learned earlier, what do you think will happen if we run the previous code?

- What happens if both words exist? 
- What happens if only one word exists?
- What happens if no words exist?

---
Example of `||`
```bash
filename=$1
word1=$2
word2=$3

if grep $word1 $filename || grep $word2 $filename; then
    echo "$word1 or $word2 is in $filename."
fi
```

---
Similarly, what will happen if...
- What happens if both words exist? 
- What happens if only one word exists?
- What happens if no words exist?

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `While`

---
Using the while command, let's discuss looping. Looping allows portions of a program to repeat as long as the condition is false. This syntax is:

```bash
while condition; do
    commands
done
```

---
Let's make a basic while script that displays five numbers in sequential order from 1 to 5 and then tells us when it's finished.
```bash
#!/bin/bash

# script called while-count.sh

count=1

while [ $count -le 5 ]; do
    echo $count
    count=$((count +1))
done
echo "Finished."
```
Why does the loop end?

---
While loops are extremely helpful to read lines of a file and then perform some command if a line meets a certain condition. Let's explore how to read lines first:

```bash
file=file1

while read -r line; do 
	echo $line
done < "$file"
```
In this script, we're creating a variable with our file. We're then reading the file until the last line is read. In this example, we're using an input redirection that we learned earlier (`<`), which passes the file into the read command. We've also used `-r` so that any backslashes are escaped.

---
Because line is acting as variable, we can also nest another loop if `$file` meets a condition. Let's say we have a file and we want to know every line that has *bananas* in it.

How would we combine the while loop with an if statement?

---
```bash
while read -r line; do
	if [[ $line == *"bananas"* ]]; then
		echo $line
	fi
done < "$file"
```

Here we're reading the file line by line using the `while` loop. We're then saying `if` our variable, `$line` equals `"banana"`, then print the `$line`.

1. Why have we added the wildcard `*`?
2. What would happen if we didn't include `*`?

---

<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Until`

---
Until loops are similar to while, except unlike while loops that run as long as the condition is true, the until loop will run as long as the condition is **false**

```bash
until condition; do
    commands
done
```

---
Let's create a script similar to the while statement: a basic while script that displays five numbers in sequential order from 1 to 5 and then tells us when it's finished.
```bash
count=1

until [ $count -gt 5 ]; do
    echo $count
    count=$((count +1))
done
echo "Finished."
```
How is this script different to the while loop?

---
How might this be useful? Let's say we want to create 3 directories labeled *dir1*, *dir2* and *dir3*:

```bash
x=1
until [[ $x == 4 ]]; do
	echo "Creating dir$x..."
	mkdir dir$x
	((x++))
done
```
Here we've created a variable `x=1` because we want our first directory to be *dir1*. We're then saying up `until` `x=4`, make a directory `mkdir` called *dir* plus our variable. We've then added 1 to `x` each iteration using an arithmetic assignment. The `echo` part is just to give us some feedback on what is happening behind the scenes.

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `for`

---
For our final flow control, we're going to learn a powerful loop called `for`. The syntax is:

```bash
for variable [in words]; do
    commands
done
```
What we might notice is that this flow uses variables that will increment during the execution of the loop.

---
How would we use `for` if we wanted to list all files and directories in a folder?

```bash
for i in $(find *); do
    echo $i
done
```

The variable `i` becomes all instances of the variable 
`$(find *)`. For each instance of `i`, we are then printing it.

Although this seems quite basic and there more simple ways to list all files and directories (`ls`), this enables us to do many things with the looped variable `i` by nesting other loops.

---
What other ways can we use for loops?
What other ways can we use for loops within files?

---
<!--_color: white -->
<!--_backgroundColor: #33857a -->
**Questions?**
- Why do we use `i`?

---
![bg](pics/minions.gif)

---
##### **Next Week: Git and Github**
- Please make sure to come with a GitHub account

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Additional Material`

---
##### **Exit Status**
Commands issue a value to the system when they terminate, which is an integer in the range of 0 and 255 indicating the success or failure of a command's execution.

Conventionally, zero indicates success and any other value indicates failure.

---
Let's list a file that we know exists on our desktop:
```console
$ ls -d /usr/bin
$ echo $?
```
`-d` is an option that returns the file if it exists and is a directory.
`$?` returns the value of the last executed command. The value being either zero for succes or any other number for failure.

---
If we then list a file that we know does not exist in our desktop and return the value of `$?`, what do we expect to happen?
```console
$ ls -d /bin/usr
$ echo $?
```

---
##### **Exit Command**
The `exit` command in a script replaces the return command and accepts a single, optional argument, which becomes the scripts exit status.

When no argument is passed, it defaults to zero.

This enables our scripts to indicate an error. 

If the script is a function in a larger program, we can use `return` instead of `exit` with a single, optional argument, allowing our function to indicate an error.

---
```bash
#!/bin/bash

# test-file: Evaluate the status of a file

FILE=~/.bashrc

if [ -e "$FILE" ]; then
    if [ -f "$FILE" ]; then
        echo "$FILE is a regular file."
    fi
    if [ -d "$FILE" ]; then
        echo "$FILE is a directory."
    fi
else
    echo "$FILE does not exist"
    exit 1 
fi

exit
```

---
```bash
test_file () {
    # test-file: Evaluate the status of a file

    FILE=~/.bashrc

    if [ -e "$FILE" ]; then
        if [ -f "$FILE" ]; then
            echo "$FILE is a regular file."
        fi
        if [ -d "$FILE" ]; then
            echo "$FILE is a directory."
        fi
    else
        echo "$FILE does not exist"
        return 1
    fi
}
```

---
`if / else` statements are most frequently used with `test`

`test` performs a variety of checks and comparisons

Its syntax is:

`test expression`

or

`[ expression ]`

---
There are many expressions that are used to evaluate the status of files. Some important **File Expressions** include:

Expression | Is True If:
:-----|:------
`-e file` | file exists
`-d file` | file exists and is a directory
`-f file` | file exists and is a regular file
`-r file` | file exists and is readable (has readable permissions for the effective user)
`s file` | file exists and has a length greater than zero

---
**String Expressions**

Expression | Is True If:
:-----|:------
`string` | string is not null
`-n string` | the length of string is > than zero
`-z string` | the length of string is zero
`string1 == string2` | string1 equals string2
`string1 != string2` | string1 and string2 are not equal

---
**Integer Expressions**

Expression | Is True If:
:-----|:------
`integer1 -eq integer2` | integer1 is == to integer2
`integer1 -ne integer2` | integer1 is != equal to integer2
`integer1 -le integer2` | integer1 is <= to integer2
`integer1 -lt integer2` | integer1 is < to integer2
`integer1 -ge integer2` | integer1 is >= to integer2
`integer1 -gt integer2` | integer1 is > to integer2

---
##### **Breaking Out Of A Loop**
Bash has two build-in commands that can be used to control program flow inside loops.
- `break` command immediately terminates a loop and resumes with the next statement following the loop
- `continue` command skips the remainder the loop that is not needed (ie. a condition has been met) and resumes with the next iteration of the loop. `continue` allows for a more efficient execution 

---
```bash
if condition; then
    if condition; then
        commands
        continue
    fi
    if condition; then
        commands
        continue
    fi
else condition; then
    command
fi
```
If the first `if` condition is met, then the second one will be skipped and resumed with the next iteration.

---
```bash
if condition; then
    if condition; then
        commands
        continue
    fi
    if condition; then
        commands
        break
    fi
else condition; then
    command
fi
```
If the second `if` condition is met, then the break immediately terminates the loop and resumes with the next statement.

---




























