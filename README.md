# DSI Workshop for Unix, Git and GitHub

## Contents:
1. [Description](https://github.com/rachaellam/dsi-workshop#description)
2. [Learning Outcomes](https://github.com/rachaellam/dsi-workshop#learning-outcomes)
3. [Design](https://github.com/rachaellam/dsi-workshop#design)
4. [Expectations](https://github.com/rachaellam/dsi-workshop#expectations)
5. [Policies](https://github.com/rachaellam/dsi-workshop#policies)
6. [Schedule](https://github.com/rachaellam/dsi-workshop#schedule)
7. [Folder Structure](https://github.com/rachaellam/dsi-workshop#folder-structure)

## Description:
The workshop was createde by the University of Toronto's Data Science Institute. The beginning of the course will introduce the basic language of Unix shell including how to navigate and manipulate files and directories. Learners will then learn certain commands, how to create scripts and write basic functions using pipes, filters and loops. 

The next portion of the lesson will be dedicated to getting started with version control and GitHub, and how it connects to the ethical discussions of reproducibility. Learners will learn how to set up Git and initialize and utilize repositories, including recording, viewing and undoing changes. They will also learn how to create branches and collaborate with others with shared branches. This course will put it all together and introduce some more advanced commands such as de-bugging and history editing.

Finally, learners will determine how to problem-solve by identifying where the issue is and how to search with Google and Stack Overflow. This will then lead to the topic of reproducibility and how to contribute by commenting code and writing documentation.

This course is designed for those who have a degree in something other than Computer Science/Statistics who are looking to enhance their data science skills for their career.

## Learning Outcomes
1. Ability to comfortably use the Unix shell.
2. Understand the importance of version control and implement fundamentals in GitHub. 
3. Confidence with problem-solving code.
4. Appreciate the importance of reproducibility and essential features.

## Design
The workshop will be held over tow weeks, three days a week. Two of the three days will be 2-hours long and the last day will be 3-hours. Being mindful of online fatigue, there will be one break during each class where students are encouraged to stretch, grab a drink and snacks, or ask any additional questions.

## Expectations
The course is a live-coding class. Students are expected to follow along with the coding, creating files and folders to navigate and manipulate. Students should be active participants while coding and are encouraged to ask questions throughout. Although slides will be available for students to reference, they should be referenced before or after class, as during class will be dedicated to coding with the instructor.

## Policies
TBA

## Schedule
TBA

## Folder Structure
Below are the folders contained in this repo with a description of what they contain and information on how to use them.

### 1. *slides-resources*:
This folder contains all editable slides. To edit, download the entire folder, including the *pics* folder as this folder contains the pictures which are relationally referenced in the markdown files.

To change a photo, edit the markdown where photos are referenced.

Example: 

Change `![w:1150 center](pics/github.png)` to `![bg](pics/github.png)`

To add a photo, add photo to the *pics* folder and reference it within the markdown file.

Example:

Added photo labelled "git_commit.png" will be referenced in markdown file as `![w:1000 left](pics/git_commit.png)`

### 2. *teaching-notes*:
This folder contains the teaching notes for the Unix and Git/GitHub workshops. Teaching notes include additional information on each slide to reference, as well as optional material. These notes are designed to guide the instructor and give more detailed information to supplement the slides.

### 3. *pdf-slides*:
This folder contains the PDF versions of the slides for students to follow. Slides should be referenced before class to prepare or after class to review. During class will be live-coding, therefore, there is no need to follow them during class. They contain all information that was discussed in class and are a great resource in the future if students need to reassess their knowledge.

### 4. *homework*:
This folder contains homeowork for students to practice. It is separated by week, then by day. Please complete the Unix Shell homework in the first week, and the Git/GitHub homework in the second.

It is just a suggestion but it will help students throughout the workshop, as content is cumulative and will only get more difficult. Unfortunately, there is not enough time to review previous content each class so while this homework is **not** graded, it is highly recommended.