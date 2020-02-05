#!/bin/dash

# boundary cases and error checking for subset0
./legit-commit
./legit-add
./legit-log
./legit-show
./legit-init
./legit-init
./legit-log
./legit-show
echo 1 > a
echo world > b
./legit-commit
./legit-commit -m 'fitst commit'
./legit-add
./legit-add a b
./legit-log
./legit-commit -m "first commit"
./legit-commit -m "first commit"
./legit-log
rm a
./legit-add a
echo 2 > a
./legit-add a
./legit-show 0:a
./legit-show 1:a
./legit-commit -m "second commit"
./legit-show 1:a