#!/bin/dash

# test ./legit-rm 2
./legit-init
echo aa > a
./legit-add a
./legit-commit -m "commit 1"
rm a
echo aaa > a
./legit-rm a
./legit-rm --cached a
rm a 
echo aaa > a
./legit-rm --force a
echo aaa > a
./legit-rm --force a --cached
./legit-add a
rm a
echo aa > a
./legit-rm a
./legit-rm --force a
echo aa > a
./legit-add a
rm a 
echo aaa > a
./legit-rm a
./legit-rm a --force --cached
echo bb > b
echo aa > a
./legit-add a b
rm b
./legit-commit -a "commit 2"
echo aaa >> a
./legit-rm a b
./legit-rm --cached a b c
cat a
cat b
./legit-show :a
./legit-show :b
./legit-show 1:a