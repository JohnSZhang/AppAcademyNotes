:Git

# Git stores items in snapshots instead of via files. There are three stages that data can exist in git, modified (different than what git has), staged(different than what git knows about but will become part of git once commited), and commited (part of git repo)

# Three main sections of a git project: The Git Directory (stores snapshots), working directory (where current files are), staging area (a file to keep track of staging files)

# Files in directory can be in 2 stages, tracked or untracked, untracked files are just that, and tracked files can be either unmodified, modified or staged

1. Create Git Repo

- git init Creates New Git Repo In Current Directory

- git clone http://ADDRESSOFCOOLREPO.git Copy Git Repo To Current Directory # Can also use different protocals, such as git:// and https, also can add optional directionary argument to pick where the project sits

- git config user.name = "john zhang" Update Git Repo. Use --global And --system To Update Config For Entire System

- git config user.name  Gives You Current User Name

2. Add Things To Git Repo

- git add -A This Way Updates Removed Files As Well. 

- git add . Add All Files In Current Repo And Children

- git add file.txt Add One File To Be Tracked

- git add '*.txt' Add Txt File Type To Git

3. Update Git Repo

- git commit -m"messages!!" Commits Changes And Gives A Commit Message Also Has -a version to skip adding files

- git mv from.txt to.txt Moves Files And Add To Repo, Similar To mv Then git rm Then git.add 

- git commit --amand Allows You To Move New Files To Previously Commit, Only If New Files Are Staged, Of Course

4. Get To Know Git Repo
- git help branch Brings Up Git Help Page

- git status Check Out How Current Repo Is Doing

- git log Check All Log Changes Happened To The Repo -p Option Will Also Show Differences From Commits --all Shows All Logs, Remote Repo Included

5. Connect Repos

- git remote add origin https://TestURL.com Adding A Remote Repo And Call It Origin

- git push -u origin master Push Master To Origin And Use -u To Remember Params

- git fetch origin Get Code From Repo But No Not Merge It In

- git push Push To Default Remote Repo (That You Just -u To Add)

- git pull origin master Pulling From Origin To Master (Get Latest Code)

6. Check Out Older Versions

- git diff HEAD Checkout The Difference Between Current Repo And What Is In The HEAD Committed Files That Are Unstaged Only

- git diff --staged Checkout The Differences Between Staged And Current Branch

7. Change Files

- git reset file.txt Resets A File To Before Staged, Removing Any Changes

- git checkout --octocat.txt Check What The Last Stage Looks Like.

- git rm '*.txt' Remove Files From Both Disk And Git Repo. If Called With --cached Will Remove From Staging But Not Directory

8. Working With Branches

- git branch thick_branch Create A New Branch

- git checkout thick_branch Switch To Branch #Use -b to create and checkout at ones

- git merge thick_branch Merge In Branch Into Current Branch

9. Working With .gitignore

- Use / To Signify A Directory ie. directory/

- Use /**/ To Specifiy Recursive Ignore ie. top_secret/**/*.key

10. Working With Remote Depos

- git remote -v Checkouts Out What Remote Repos Are. 

- git remote add shot_name url Adds A Remote Repo To List

- git fetch short_name Fetches New Data From Remote Repo

- git pull short_name Fetches Data And Merge In From Remote Repo

- git push remote_name branch_name Pushes Branch To Remote 

- git remote show remote_name Shows Whats On The Remote Repo And Their Details, Also Works With Remote Branch. 



