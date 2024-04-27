## Submission Information

🚨 **Please review our [Assignment Submission Guide](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md)** 🚨 for detailed instructions on how to format, branch, and submit your work. Following these guidelines is crucial for your submissions to be evaluated correctly.

### Submission Parameters:
* Submission Due Date: `11:59 PM - 27/04/2024`
* The branch name for your repo should be: `assignment`
* What to submit for this assignment:
    * This markdown file (assignment.md) should be populated and should be the only change in your pull request.
* What the pull request link should look like for this assignment: `https://github.com/<your_github_username>/shell/pull/<pr_id>`
    * Open a private window in your browser. Copy and paste the link to your pull request into the address bar. Make sure you can see your pull request properly. This helps the technical facilitator and learning support staff review your submission easily.

Checklist:
- [ ] Create a branch called `assignment`.
- [ ] Ensure that the repository is public.
- [ ] Review [the PR description guidelines](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#guidelines-for-pull-request-descriptions) and adhere to them.
- [ ] Verify that the link is accessible in a private browser window.

# Assignment: The Secret Password

You are stuck in a virtual room and can only leave if you figure out the password! Fortunately, somebody left behind 6 clues for you to find the secret password, but the messaging is not that clear. It is your job to discover what the secret password is!

1. The very odd and inedible ingredient in a cake recipe
2. The season number that contains only 18 episodes (Hint: How do you list them?)
3. Fifth word of Season 6, Episode 21 of Friends
4. Fifth word of the fifth fictional Space Wars series
5. Second word of this song that's exactly 4 minutes long in this "colour" album
6. The fourth word to the fourth Hunger Games movie

## Instructions
1. Fork this Shell learning module repository following these [instructions](https://github.com/UofT-DSI/onboarding/blob/main/onboarding_documents/submissions.md#setting-up)
2. Use your bash skills (such as `cd`, `cat`, etc.) to figure out what the secret password is! You will be exploring the `clues` directory in your bash terminal.
3. Write the secret password in your own version of this markdown file in your forked repo.

**What is the secret password?**
```
Your answer here...

## Paper Ring 10 Meets and Lucky Stars

## pushed a new branch into my github called "assignment_1" with a textfile called "SecretPsswrd"
(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell (main)
$ git branch -v
* main df5e366 Update README.md


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell (main)
$ git branch -c assignment_1


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell (main)
$ echo "Secret Password" > SecretPsswrd


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell (main)
$ git checkout assignment_1
Switched to branch 'assignment_1'
Your branch is up to date with 'origin/main'.


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell (assignment_1)
$ nano SecretPsswrd

(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell (assignment_1)
$ git add SecretPsswrd 
warning: in the working copy of 'SecretPsswrd', LF will be replaced by CRLF the next time Git touches it


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell (assignment_1)
$ git status
On branch assignment_1
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   SecretPsswrd



(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell (assignment_1)
$ git commit -m "test text entered"
[assignment_1 4b8cdbc] test text entered
 1 file changed, 4 insertions(+)
 create mode 100644 SecretPsswrd



(base)
Talan@Talan MINGW64 ~/Desktop/Assignements
$ cd shell/02_assignments/clues/food/


(base) 
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/food (assignment_1)
$ ls
cake/


(base) 
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/food (assignment_1)
$ cd cake


(base) 
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/food/cake (assignment_1)
$ ls
chocolate_cake.txt  red_velvet_cake.txt  vanilla_cake.txt


(base) 
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/food/cake (assignment_1)
$ cat chocolate_cake.txt red_velvet_cake.txt vanilla_cake.txt 
Milk
Cake Flour
Eggs
Cocoa Powder
Dark Chocolate
Baking Powder
Sugar
Vanilla Extract
Butter
Baking Powder
Milk
Vanilla Extract
Red Food Colouring
Eggs
Cocoa Powder
Sugar
Butter
Cake Flour
Milk
Sugar
Baking Powder
Cake Flour
Eggs
Butter
Vanilla Extract
Paper Rings

## 1-Paper Rings 

(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/food/cake (assignment_1)
$ cd ..


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/food (assignment_1)
$ cd ..


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues (assignment_1)
$ cd shows/


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/shows (assignment_1)
$ ls 
friends/

##iteration of ls command for each season
(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/shows (assignment_1)
$ cd friends/season_10


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/shows/friends/season_10 (assignment_1)
$ ls
ep_1.txt   ep_11.txt  ep_13.txt  ep_15.txt  ep_17.txt  ep_2.txt  ep_4.txt  ep_6.txt  ep_8.txt
ep_10.txt  ep_12.txt  ep_14.txt  ep_16.txt  ep_18.txt  ep_3.txt  ep_5.txt  ep_7.txt  ep_9.txt

##2-10

(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/shows/friends/season_10 (assignment_1)
$ cd ..


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/shows/friends (assignment_1)
$ cd season_6


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/shows/friends/season_6 (assignment_1)
$ cat ep_21.txt 
The One Where Ross Meets Elizabeth's Dad

##3-Meets


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/shows/friends (assignment_1)
$ pwd
/c/Users/ogulc/Desktop/Assignements/shell/02_assignments/clues/shows/friends


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/shows/friends (assignment_1)
$ cd

(base)
Talan@Talan MINGW64 ~
$ cd /c/Users/ogulc/Desktop/Assignements/shell/02_assignments/clues/movies/space_wars/

(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/movies/space_wars (assignment_1)
$ cat fifth_movie.txt 
Space Wars: Future Legends and Past Legacies

##4-and


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/movies/space_wars (assignment_1)
$ cd


(base)
Talan@Talan MINGW64 ~
$ cd Desktop/Assignements/shell/02_assignments/clues/albums/


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/albums (assignment_1)
$ ls
fearless/  lover/  red/


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/albums (assignment_1)
$ cd red/


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/albums/red (assignment_1)
$ ls
song_1.txt  song_2.txt  song_3.txt  song_4.txt  song_5.txt


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/albums/red (assignment_1)
$ cat song_1.txt song_2.txt song_3.txt song_4.txt song_5.txt 
Title: Red
Duration: 3:43
Title: I Knew You Were Trouble
Duration: 3:39
Title: Everything Has Changed
Duration: 4:05
Title: Holy Ground
Duration: 3:22
Title: The Lucky One
Duration: 4:00


##5-Lucky

(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/albums/red (assignment_1)
$ cd


(base)
Talan@Talan MINGW64 ~
$ cd Desktop/Assignements/shell/02_assignments/clues/movies/hanger_games/


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/movies/hanger_games (assignment_1)
$ ls
movie_1.txt  movie_2.txt  movie_3.txt  movie_4.txt


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/movies/hanger_games (assignment_1)
$ cat movie_4.txt 
Hanger Games & the Stars of Darkness


##6-Stars

(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments/clues/movies (assignment_1)
$ cd


(base)
Talan@Talan MINGW64 ~
$ cd Desktop/Assignements/shell/02_assignments/


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments (assignment_1)
$ git add assignment.md 


(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments (assignment_1)
$ git status
On branch assignment_1
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   assignment.md



(base)
Talan@Talan MINGW64 ~/Desktop/Assignements/shell/02_assignments (assignment_1)
$ git commit -m "psswrd complete"
[assignment_1 3afad48] psswrd complete
 1 file changed, 252 insertions(+)


```

|Criteria|Complete|Incomplete|
|---|---|---|
|Secret Password|The user properly used the proper bash commands to find the secret password.|The user did not properly used the proper bash commands to find the secret password.|



If you encounter any difficulties or have questions, please don't hesitate to reach out to our team via our Slack at `#cohort-3-help`. Our Technical Facilitators and Learning Support staff are here to help you navigate any challenges.
