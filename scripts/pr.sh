#!/bin/sh

subname=""
if test -z "$2" 
then
  branch=issues#$1
else
  branch=issues#$1_$2
fi

git checkout master

git checkout -b $branch 

git commit -m "[ci skip] wip" --allow-empty -n

git push -u origin $branch

hub compare
