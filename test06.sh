#!/bin/dash

# test ./legit-status 1
./legit-status
./legit-init
./legit-status
touch a b c d e f
echo 1 > g
echo 1 > h
echo 1 > i
echo 1 > j
echo 1 > k
./legit-add a b c
./legit-add g h i j k
./legit-commit -m "commit 1"
rm h i j k
echo 0 > h
echo 0 > i
echo 0 > j
echo 0 > k
./legit-add h i k
rm h
echo 1 > h
echo 2 > k
./legit-add d e
./legit-rm --cached c
./legit-rm --force b
rm a b
./legit-status
