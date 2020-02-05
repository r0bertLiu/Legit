#!/bin/dash

#basic useage of subset0
./legit-init
echo 1 > a
echo world > b
./legit-add
./legit-add a b
./legit-log
./legit-commit -m "first commit"
./legit-log
echo 2 >> a
./legit-add a
cat a
./legit-show 0:a
./legit-show 0:b
./legit-show :a
./legit-commit -m "second commit"
./legit-log
./legit-show 1:a
./legit-show 1:b
