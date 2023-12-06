# Unix, Git and GitHub

## Contents
1. [Description](https://github.com/UofT-DSI/01-shell_git_github#description)
2. [Learning Outcomes](https://github.com/UofT-DSI/01-shell_git_github#learning-outcomes)
3. [Design](https://github.com/UofT-DSI/01-shell_git_github#design)
4. [Expectations](https://github.com/UofT-DSI/01-shell_git_github#expectations)
5. [Policies](https://github.com/UofT-DSI/01-shell_git_github#policies)
6. [Schedule](https://github.com/UofT-DSI/01-shell_git_github#schedule)
7. [Folder Structure](https://github.com/UofT-DSI/01-shell_git_github#folder-structure)

## Description
The beginning of the course will introduce the basic language of Unix shell including how to navigate and manipulate files and directories. Learners will then learn certain commands, how to create scripts and write basic functions using pipes, filters and loops. 

The next portion of the lesson will be dedicated to getting started with version control and GitHub, and how it connects to the ethical discussions of reproducibility. Learners will learn how to set up Git and initialize and utilize repositories, including recording, viewing and undoing changes. They will also learn how to create branches and collaborate with others with shared branches. This course will put it all together and introduce some more advanced commands such as de-bugging and history editing.

Finally, learners will determine how to problem-solve by identifying where the issue is and how to search with Google and Stack Overflow. This will then lead to the topic of reproducibility and how to contribute by commenting code and writing documentation.

In the final week, students will learn about ethics and inequity and why it's important to include these discussions within their projects. This class will be discussion based and will require students to do readings before the class.

Throughout the entire course, students will learn how to problem solve through live coding. They will also learn about reproducibility and how to centre it within their work.

This course is designed for those who have a degree in something other than Computer Science/Statistics who are looking to enhance their data science skills for their career.

## Learning Outcomes
Students will know how to:
1. Comfortably access the terminal and write scripts using basic commands, variables, pipes, filters and loops. This will be assessed in Assignment 1.
2. How to use version control to preserve personal work, access and edit pervious code versions, collaborate with others, and find and debug errors. This will be assessed in Assignment 2.
3. Self-problem solve by identifying issues, researching, or properly formulating questions using components of reproducibility. This will be assessed in both Assignment 1 and Assignment 2.
4. Situate all work within wider discussions of ethics and inequity. Students will actively scrutinize who is and isn't in our datasets and develop knowledge of past abuses of power to better engage their work with ethical considerations. This will be assessed in Assignment 2.

## Design
The workshop will be held over three weeks, three days a week. Two of the three days will be 2-hours long and the last day will be 3-hours. Being mindful of online fatigue, there will be one break during each class where students are encouraged to stretch, grab a drink and snacks, or ask any additional questions.

## Expectations
The course is a live-coding class. Students are expected to follow along with the coding, creating files and folders to navigate and manipulate. Students should be active participants while coding and are encouraged to ask questions throughout. Although slides will be available for students to reference, they should be referenced before or after class, as during class will be dedicated to coding with the instructor.

## Policies
1. Camera is optional although highly encouraged. We understand that not everyone may have the space at home to have the camera on.
2. Class will start 5 minutes past the designated time.

## Schedule
Day 1: Unix Shell I (introducing the Shell, introductory commands, files and directories)

Day 2: Unix Shell II (input/output and pipes/filters)

Day 3: Unix Shell III (shell scripts, shell functions, parameters, flow control)

Day 4: Version Control and GitHub I (introducing version control and GitHub, basic Git commands)

Day 5: Version Control and GitHub II (remote repositories; branching)

Day 6: Version Control and GitHub III (collaborating, dealing with conflicts)

Day 7: Problem solve, reproducibility, ethics, inequity

Day 8: Data Science Foundations - Review and Practice

## Deadlines
Homework Submission:

Homework assignments are expected to be submitted within 2 days of their release date. For example, if homework-1 is released on Saturday, December 2nd, the submission deadline is Monday, December 4th.

Chapter Assignments Submission:

Assignments related to each chapter will have a dedicated submission deadline. These assignments are typically due one week after the conclusion of the respective chapter. As an illustration, if you are working on assignment-1 released on Saturday, December 2nd, the due date for submission is Saturday, December 9th.

Assignment-1 due date: Saturday, Dec 9th

Assignment-2 due date: TBD

All Homework and Assignment submissions can be submitted through [this google form link](https://forms.gle/YJsEuZCKBoZkrnqt5)


## Folder Structure
Below are the folders contained in this repo with a description of what they contain and information on how to use them.

### 1. *slides-resources*
This folder contains all editable slides. To edit, download the entire folder, including the *pics* folder as this folder contains the pictures which are relationally referenced in the markdown files.

To change a photo, edit the markdown where photos are referenced.

Example: 

Change `![w:1150 center](pics/github.png)` to `![bg](pics/github.png)`

To add a photo, add photo to the *pics* folder and reference it within the markdown file.

Example:

Added photo labelled "git_commit.png" will be referenced in markdown file as `![w:1000 left](pics/git_commit.png)`

This folder also includes the html versions of the slides. Either the pdf slides or the html slides can be used when teaching. If slides are edited to contain any gifs, the instructor will need to use the html slides so that the gifs are active.

### 2. *pdf-slides*
This folder contains the pdf versions of the slides for students to follow. Slides should be referenced before class to prepare or after class to review. During class will be live-coding, therefore, there is no need to follow them during class. They contain all information that was discussed in class and are a great resource in the future if students need to reassess their knowledge.

### 3. *pdf-homework*
This folder contains homework for students to practice Unix and Git/GitHub workshops. It is separated by week, then by day. Please complete the Unix Shell homework in the first week, and the Git/GitHub homework in the second.

It is just a suggestion but it will help students throughout the workshop, as content is cumulative and will only get more difficult. Unfortunately, there is not enough time to review previous content each class so while this homework is **not** graded, it is highly recommended.

### 4. *homework*
This folder contains the editable versions of the pdf homework. Can be changed based on the amount of content that was completed each day.

### 5. *post-workshop*
This folder contains the exit surveys for students to complete. It holds both the md and docx versions of the survey.

### 6. *assignments*
This folder contains the assignments for the workshop. Students are expected to complete them one week after the content has been delivered

### 7. *guides*
This folder includes guides specifically for windows to set up Ubuntu environment and SSH Keys. Students who experience difficulty with these topics should reference the guides to debug.
