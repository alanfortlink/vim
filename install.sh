#!/bin/bash

[[ ! -d ~/.vim ]] && mkdir -r ~/.vim

cp .vimrc ~
cp -R configs ~/.vim/

