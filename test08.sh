#!/bin/dash

# test subset1 all
./legit-init
echo a > a
echo b > b
echo c > c
echo d > d
touch e f g
./legit-add a b c d
./legit-commit -m "commit 1"
./legit-status
echo aa >> a
echo bb >> b
echo cc >> c
./legit-add c e f g
./legit-commit -a -m "commit 2"
./legit-rm --cached g
./legit-rm --cached --force e
./legit-rm --force f
echo aaa >> a
rm b
echo ccc > c
./legit-add c 
echo cccc >> c
./legit-status