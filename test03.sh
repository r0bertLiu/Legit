#!/bin/dash

# test ./legit-rm 1
./legit-rm
./legit-init
./legit-rm
./legit-rm _a
./legit-rm a
echo 1 > a
./legit-rm a
./legit-add a
./legit-commit -m "commit 1"
./legit-rm a
cat a
./legit-show :a
./legit-show 0:a
echo 1 > a
echo 2 > b
./legit-add a b
./legit-commit -m "commit 2"
./legit-rm -cache a
./legit-rm --cache a
./legit-rm b --cache
cat a
cat b
./legit-show :a
./legit-show :b
touch a b
./legit-add a b
./legit-commit -m "commit 3"
./legit-rm --cache a b
cat a
cat b
./legit-show :a
./legit-show :b
