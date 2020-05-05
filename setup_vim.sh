#!/bin/bash

mv ~/.vimrc ~/.vimrc_backup_$(date +%s)

cp .vimrc ~/.vimrc
cp -R configs/ ~/.vim/
