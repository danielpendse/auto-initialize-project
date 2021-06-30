#!/bin/zsh

[ $# -ge 1 -a -f "$1" ] && input="$1" || input="-"
source .env
REPO_NAME=$1
echo $FILEPATH
echo $GITUSERNAME
cd ~/MyProjects/
mkdir $REPO_NAME
cd $REPO_NAME
curl -H "Authorization: token $GITHUB_API_TOKEN" https://api.github.com/user/repos -d '{"name": "'"${REPO_NAME}"'"}'
git init
git remote add origin git@github.com:$GITUSERNAME/$REPO_NAME.git
touch README.md
git add .
git commit -m "Initial commit"
git push -u origin master
code .


