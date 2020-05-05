""" SETUP LEADERS
let mapleader=','
let maplocalleader=';'

" DO NOT CREATE A SWAP FILE
set noswapfile

" RETURN TO LAST EDIT POSITION WHEN OPENING FILE
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" IGNORE WHEN RUNNING VIMGREP
:set wildignore+=cmake.bld/**,build/**,buildlinux/**,buildibm/**,buildsun/**

set undodir=~/.vim/undo
set undofile

