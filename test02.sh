#!/bin/dash

# test ./legit-commit
./legit-init
echo 1 > a
./legit-add a
./legit-commit -m "commit 1"
./legit-commit -m "commit 2"
echo 2 >> a
./legit-commit -a
./legit-commit -a -m "commit 2"
echo 3 >> a
echo hello > b
./legit-add a b
./legit-commit -m "commit 3" -a
rm a
./legit-commit -m "commit 4" -a
./legit-show :a
./legit-show :b
./legit-show 3:a
./legit-show 3:b

