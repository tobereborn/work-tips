#!/usr/bin/env bash
#
# Set none for global configs such as user.name and user.email,
# and set them in your individual git project,so that, you can 
# have mutiple projects whith mutiple different account settings.
#

set -u
set -e

if [ $# -eq 1 ]
then 
   proj="$1"
else
   echo "Usage $0: gitProjectName"
   exit 1
fi

bin=$(dirname $0;pwd)
bin=$(cd ${bin}>/dev/null;pwd)
PROJ_HOME=$(cd ${bin}/../git/${proj};pwd)


echo "project.home=$PROJ_HOME"

echo "unset global user.name"
git config --global --unset user.name
git config --global --unset user.email

echo "unset global user.email"
git config --global --add user.name "none"
git config --global --add user.email "none"

echo "cd to $PROJ_HOME"
cd "$PROJ_HOME"

echo "set local user.name"
git config --local --add user.name tobereborn

echo "set local user.email"
git config --local --add user.email jinweizhen008@gamil.com

echo "list all configs"
echo "++++++++++++++++++++++++++++++++++++++++++"
git config --list
echo "++++++++++++++++++++++++++++++++++++++++++"

if [ $? -eq 0 ]
then
   echo "Done"
   exit 0
else
   echo "Failed"
   exit 2
fi
