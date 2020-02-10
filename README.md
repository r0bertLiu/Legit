# Legit
> This is a UNSW MIT project for course 9044/2041.

This project realized a subset of the version control system Git based on POSIX-compatible shell and Perl. The working 
operating system is linux.

## The operation and sample usage


### legit-init: 
create initial files or directories inside .legit
sample usage: 
```
$ ./legit-init
- Initialized empty legit repository in .legit
```



### legit-add *filename*: 
this command adds the contents of one or more files to the "__index__"
sample usage: 
```
$ ./legit-add a.txt b.txt
```



### legit-commit (-a) -m *message*: 
the command saves a copy of all files in the index to the repository
a msg describing the commit must be include. legit-command can have a __-a__ option which causes all files already in the index to have their contents from the current directory added to the index before the commit.
sample usage:
```
$ ./legit-commit -m 'init commit'
- Committed as commit 0
```



### legit-log: 
the legit-log command prints one line for every commit that has been made to the repository
sample usage:
```
$./legit-log
- 0 init commit
```



### legit-show commit:*filename*: 
this command should print the contents of the specified file as the of the specified commit
sample usage:
```
$./legit-show 1:a.txt
- line1
- line2
$./legit-show :a.txt
- line1
```



### legit-rm (--force) (--cached) *filenames*: 
this command removes a file from the index, or from current directory and the index. if the __--cached__ option is specified the file is remove only from the index and not from the current directory. the __--force__ option will overrides the features that legit-rm will stop the user accidentally losing work by default.
sample usage:
```
$ ./legit-rm --force e
```



### legit-status: 
legit-status show the status of files in the current directory, index and repository
sample usage:
```
$ ./legit-status
- a.txt - file changed, different changes staged for commit
- b.txt - file deleted
- c.txt - untracked
```


### legit-branch (-d) (*branch-name*): 
legfit-branch either creates a branch, deletes a branch of lists current branch names
sample usage:
```
$ ./legit-branch b1
$ ./legit-branch
- b1
$ ./legit-branch -d b1
```

### legit-checkout branch-name
legit-checkout switches branches
sample usage:
```
$ ./legit-checkout b1
- Switched to branch 'b1'
```
