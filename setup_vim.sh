#!/bin/bash

mv ~/.vimrc ~/.vimrc_backup_$(date +%s)
mv ~/.vim ~/.vim_backup_$(date +%s)

mkdir ~/.vim

cp .vimrc ~/.vimrc
cp -R configs ~/.vim/
