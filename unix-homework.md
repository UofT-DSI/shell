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


# **Unix Shell Homework**
```console
$ echo "Data Sciences Institute"
$ echo "by: Rachael Lam"
```

---
##### **Expectations**
The goal of this homework is not to grade the competancy of what was learned, but to give students an opportunity to practice. This will help students remember the content and prepare for the next class.

Because each class builds upon the last, it's important to review the content, as time is too limited for a full in-class review.

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Day 1`

---
##### **To Review:**
Please practice the following commands. You can upload different datasets relavent to your work to play with.
1. current directory `pwd`
2. set working directory `cd`
3. list contents of working directory `ls`
4. create directory `mkdir`
5. create file `touch`
6. copy `cp`
7. move and rename `mv`
8. remove `rm`

---
9. concatenate `cat`

10. extract columns from output `cut`
11. sort lines of text `sort`
12. report or omit repeated lines `uniq`
13. print lines matching a patter `grep`
14. search directories and subdirectories for files `find`
15. ouput the first part of a file `head`
16. output the last part of a file `tail`

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Day 2`

---
##### **To Review:**

1. Play around with the commands we learned last week using:
- `-options`
- Wildcards
- Expansions
- Quoting and backslashing.

---
2. Create any script using functions. Try to include:
- Global variables
- Local variables
- Positional parameters

---
<!--_color: white -->
<!--_backgroundColor: #f4a534 -->
## `Day 3`

---
##### **To Review:**
It's time to put everything we've learned together!
1. Write a script that takes the parking_data.csv file as a positional parameter from the terminal as the input (this is so that the script can be run from any computer, so long as the csv file is available).

    - You can find the Toronto parking ticket data at Toronto’s Open Data Portal: https://open.toronto.ca/dataset/parking-tickets/ 

---
2. Build a function into the script that for every type of infraction_description, find the mean, median, max, and min set_fine_amount

    - The script should be able to navigate to the directory housing the csv file
    - Functions should include loops
    - You will need to use outside sources (Google and StackOverflow) to build these calculations. Remember to cite any code that was used.

