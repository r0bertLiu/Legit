#!/bin/dash

# test ./legit-branch
./legit-branch
./legit-init
./legit-branch
echo 1 > a
./legit-add a
./legit-commit -m "commit 1"
./legit-branch
./legit-branch -d
./legit-branch -a
./legit-branch --a
./legit-branch _d
./legit-branch d
./legit-branch d
./legit-branch
./legit-branch -d _a
./legit-branch -d a
./legit-branch -d d
./legit-branch -d d
./legit-branch -d master
./legit-branch