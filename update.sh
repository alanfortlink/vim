#!/bin/bash

cp -R ~/.vimrc .
cp -R ~/.vim/configs/* configs

git add -u
git commit -m "update"
git push origin master
