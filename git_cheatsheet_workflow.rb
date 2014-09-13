:Git

1. Create Git Repo

- git init Creates New Git Repo In Current Directory

2. Add Things To Git Repo

- git add . Add All Files In Current Repo And Children

- git add file.txt Add One File

- git add '*.txt' Add Txt File Type To Git

3. Update Git Repo

- git commit -m"messages!!" Commits Changes And Gives A Commit Message

4. Get To Know Git Repo

- git status Check Out How Current Repo Is Doing

- git log Check All Log Changes Happened To The Repo

5. Connect Repos

- git remote add origin https://TestURL.com Adding A Remote Repo And Call It Origin

- git push -u origin master Push Master To Origin And Use -u To Remember Params

- git push Push To Default Remote Repo (That You Just -u To Add)

- git pull origin master Pulling From Origin To Master (Get Latest Code)

6. Check Out Older Versions

- git diff HEAD Checkout The Difference Between Current Repo And What Is In The HEAD Current Staged Files

- git diff --staged Checkout The Differences Between Staged And Current Branch

7. Change Files

- git reset file.txt Resets A File To Before Staged, Removing Any Changes

- git checkout --octocat.txt Check What The Last Stage Looks Like.

- git rm '*.txt' Remove Files From Both Disk And Git Repo

8. Working With Branches

- git branch thick_branch Create A New Branch

- git checkout thick_branch Switch To Branch #Use -b to create and checkout at ones

- git merge thick_branch Merge In Branch Into Current Branch


