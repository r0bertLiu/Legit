#!/bin/dash

# test subset1 all
./legit-init
echo aa > a
echo bb > b
touch c d
./legit-add a b
./legit-commit -m "commit 1"
echo aa >> a
./legit-commit -m -a "commit 2"
./legit-rm --cached a
cat a
./legit-show :a
./legit-show 1:a
./legit-show 0:a
echo aa >> b
./legit-status
./legit-commit -m -a "commit 3"
./legit-add b c d 
./legit-commit -a -m "commit 4"
./legit-rm --cached c
./legit-rm --force d
rm b
./legit-show :b
./legit-show 0:b
./legit-show 1:b
./legit-show 0:b
cat c
cat d
echo cc >> c
./legit-add c
./legit-status
