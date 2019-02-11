""" Visual
set relativenumber
set cursorline
set nu
set colorcolumn=80
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set smarttab

""" Copy and Paste
"set clipboard=unnamed
set expandtab

""" Leader
let mapleader=','

""" Search
set ic
set hlsearch
nnoremap <leader>m :noh<CR>

""" Navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabNext<CR>

""" Panels
set splitright
set splitbelow

""" Shortcuts
noremap <C-s> :w<CR>
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>q :q<CR>

""" Leader mappings
noremap <bslash><bslash> :NERDTreeToggle<CR>
noremap <leader>v :vnew<CR>
noremap <leader>n :new<CR>
noremap <leader>t :tabnew<CR>
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
noremap <leader>a mj{V}gq`j
noremap <leader>0 :tabnew<CR>:e ~/.vimTodo<CR>

""" Tab navigation
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

let maplocalleader=';'
noremap <leader>. :cw<CR>

""" ClangFormat
noremap <leader><leader> :ClangFormat<CR>

""" FZF
noremap <leader>e :call fzf#run({'sink': 'e', 'down': '30%'})<CR>

""" Plugins with VimPlug
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
"Plug 'valloric/youcompleteme'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'		
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tomasiser/vim-code-dark'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tommcdo/vim-exchange'
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'rhysd/vim-clang-format'
Plug 'dart-lang/dart-vim-plugin'
Plug 'reisub0/hot-reload.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'kaicataldo/material.vim'
Plug 'pangloss/vim-javascript'
Plug 'maksimr/vim-jsbeautify'
Plug 'qpkorr/vim-renamer'
Plug 'lervag/vimtex'

call plug#end()

"""let g:ycm_autoclose_preview_window_after_completion=1

""" Colors
set termguicolors
colorscheme dracula
let g:material_theme_style = 'dark'

""" Undo 
if has('persistent_undo')			 "check if your vim version supports it
	set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif			

set guioptions=

nnoremap <C-e> :tabnext<CR>

""" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:UltiSnipsEditSplit="vertical"

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:clang_format#code_style = "llvm"

syntax on
let g:python_highlight_all = 1


