""" General
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>q :q<CR>

let $GIT_SSL_NO_VERIFY = 'true'

""" VIM user interface
" Relative line numbers
set relativenumber
" Highlight cursor line
set cursorline
" Show line numbers
set nu
" Do not create a swap file
set noswapfile
" NO case sensitive
set ignorecase

""" Files and backups
syntax enable

""" Text, tab and indent related
set colorcolumn=80
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set autoindent

""" Search settings
set ic
set hlsearch
nnoremap <leader>m :noh<CR>

""" Setup leaders
let mapleader=','
let maplocalleader=';'

""" Moving around, tabs and buffers
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabNext<CR>

" Maximize current window
noremap <leader>j <C-w>_<C-w><Bar> 
" Make open windows to have the same size
noremap <leader>k <C-w>=

" Go to a specific tab (from 1 to 9)
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" Close quickfix
noremap <leader>s :cclose<CR>
" Open quickfix with 8 lines
noremap <leader>S :copen 20<CR>

noremap <leader>v :vnew<CR>
noremap <leader>n :new<CR>
noremap <leader>t :tabnew<CR>
noremap <leader>q :q<CR>
noremap <leader>0 :tabnew<CR>:e ~/.vimTodo<CR>

noremap <leader>c :e %<.cpp<CR>
noremap <leader>C :vnew %<.cpp<CR>
noremap <leader>h :e %<.h<CR>
noremap <leader>H :vnew %<.h<CR>

""" Sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500


""" vimgrep searching and cope displaying
" Load tags with to cscope
noremap <leader>l :call LoadTags()<CR> :redraw!<CR>
" Find symbol under the cursor with scope
noremap <leader>f yiw :cs find s <C-r>"<CR>
" Search selected text with vimgrep in all files
noremap <leader>g y:vimgrep /<c-r>"/jg **/*.* <CR> :copen<CR>
" Find text with vimgrep in all files. TODO: Create a function to this and
" avoid all these <Left>'s
noremap <leader>G :vimgrep //gj **/*.*<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

""" Misc
set clipboard=unnamed
set splitright
set splitbelow
noremap <leader>m :noh<CR>

" Show full path of open file
noremap <localleader>p :echo expand('%:p')<CR>

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""" Helper functions
" Load tags with scope
function! LoadTags()
    silent cs reset
    silent !cscope -Rb
    silent cs add cscope.out
    silent !rm cscope.out
endfunction

""" Plugins

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tomasiser/vim-code-dark'
Plug 'airblade/vim-gitgutter'
Plug 'tommcdo/vim-exchange'
Plug 'rhysd/vim-clang-format'
Plug 'skywind3000/asyncrun.vim'
Plug 'alanfortlink/vim-sftp'
Plug 'dense-analysis/ale'
Plug 'frazrepo/vim-rainbow'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'


call plug#end()

""" Plugin settings

""" vim-sftp
noremap <leader>w :call SendCurrentFileToRemote()<CR>
noremap <leader>W :call SendAllOpenBuffersToRemote()<CR>

""" NERDTree
noremap <bslash><bslash> :NERDTreeToggle<CR>

""" ALE
noremap gd :ALEGoToDefinition<CR>
noremap gt :ALEGoToTypeDefinition<CR>
noremap gD :ALEGoToDefinitionInVSplit<CR>
noremap gF :ALEFindReferences<CR>

let g:ale_linters = {'cpp': ['clangd']}
let g:ale_completion_enabled = 1
let g:ale_enabled = 1

let g:ale_completion_max_suggestions = 10

let g:clang_compilation_database = './build'

" set completeopt+=noinsert
" set completeopt=menu,menuone,preview,noselect,noinsert

""" ClangFormat
let g:clang_format#code_style = "llvm"
noremap <leader><leader> :ClangFormat<CR>

""" fzf
noremap <leader>e :call fzf#run({'sink': 'e', 'down': '30%'})<CR>
" noremap <leader>e :e **/*
" noremap <leader>E :vs **/*

" AsyncRun
let g:asyncrun_open = 2

""" Colors and Fonts
set t_Co=256
set t_ut=

try
    colorscheme codedark
catch
endtry

let g:airline_theme = 'codedark'

""" GVIM:
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

:set wildignore+=cmake.bld/**,build/**,buildsun/**,ibmbuild/**,buildibm/**

set undodir=~/.vim/undodir
set undofile

imap <F2> BALL_LOG_INFO
imap <F3> BALL_LOG_ERROR

set foldmethod=syntax
set tags=tags

set list

autocmd BufWritePost * GitGutter
let g:rainbow_active = 1

nnoremap <F10> :TagbarToggle<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
