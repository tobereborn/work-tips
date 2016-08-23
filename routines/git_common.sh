#!/usr/bin/env bash
#
# Common git commands,refering to http://marklodato.github.io/visual-git-guide/index-en.html
# 

set -u
set -e

echo "list all configs"
git config --list

echo "check remote branches"
git remote  -v  

echo "check local branches"
git branch -a

echo "delete local branch that has merged to current branch"
git branch -d "$branch"


echo "delete remote branch"
git push origin --delete <branchName>

echo "purge local remote branch refers"
git fetch -p
git remote prune origin
