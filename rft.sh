#!/bin/dash

curr_branch=`cat ".legit/branch-log"`
echo $curr_branch
if [ $curr_branch = "master" ]
then
	echo "right"
fi