#!/bin/bash
set -e

if [[ $(git status --porcelain) ]]; then
  echo "There are pending changes. Please commit or stash them before proceeding."
  exit 1
fi

echo "Are you sure you want to deploy the website? [y/N]"
read -r answer

if [[ ! "$answer" =~ ^[Yy] ]]; then
  echo Aborting
  exit 1
fi

./build.sh

INITIAL_BRANCH=$(git branch --show-current)

git checkout pages
cp -R site/* .
git add -A
git commit -m "Deploy new version"
git push
git checkout "$INITIAL_BRANCH"

echo "Deployed"
