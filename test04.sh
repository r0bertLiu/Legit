#!/bin/dash

# test ./legit-rm 2
./legit-init
touch a b c
./legit-add a
./legit-commit -m "commit 1"
./legit-add b
./legit-rm c
./legit-rm d
./legit-rm b
./legit-show :b
./legit-rm --cached b
./legit-show :b
cat b
touch b
./legit-add b
./legit-show :b
./legit-rm --force b
./legit-show :b
cat b
touch b 
./legit-add b
./legit-rm b c --cached
rm a
./legit-rm a
./legit-show :a
./legit-add b
rm b
./legit-rm b