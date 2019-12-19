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
noremap <leader>S :copen 8<CR>

noremap <leader>v :vnew<CR>
noremap <leader>n :new<CR>
noremap <leader>t :tabnew<CR>
noremap <leader>q :q<CR>
noremap <leader>a mj{V}gq`j
noremap <leader>0 :tabnew<CR>:e ~/.vimTodo<CR>

noremap <leader>c :vnew %<.cpp<CR>
noremap <leader>h :vnew %<.h<CR>

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

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

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
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'rhysd/vim-clang-format'
Plug 'liuchengxu/space-vim-dark'
Plug 'kaicataldo/material.vim'
Plug 'qpkorr/vim-renamer'
Plug 'skywind3000/asyncrun.vim'
Plug 'alanfortlink/vim-sftp'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dense-analysis/ale'

call plug#end()

""" Plugin settings

""" vim-sftp
noremap <leader>w :call SendCurrentFileToRemote()<CR>
noremap <leader>W :call SendAllOpenBuffersToRemote()<CR>

""" NERDTree
noremap <bslash><bslash> :NERDTreeToggle<CR>

""" YouCompleteMe (ycm)
noremap <leader>i :YcmCompleter GoToInclude<CR>
noremap <leader>d :YcmCompleter GoToDeclaration<CR>
noremap <leader>D :YcmCompleter GoToDefinition<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.','re![_a-zA-z0-9]'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

""" ClangFormat
let g:clang_format#code_style = "llvm"
noremap <leader><leader> :ClangFormat<CR>

""" fzf
noremap <leader>e :call fzf#run({'sink': 'e', 'down': '30%'})<CR>

""" SuperTab
let g:SuperTabDefaultCompletionType = '<C-n>'

""" UltiSnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" AsyncRun
let g:asyncrun_open = 2

""" Colors and Fonts
set t_Co=256
set t_ut=
colorscheme codedark
let g:airline_theme = 'codedark'
set guifont=Fira\ Code\ 11

""" GVIM:
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
