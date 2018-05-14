""" Visual
set relativenumber
set cursorline
set nu
set colorcolumn=80

""" Copy and Paste
"set clipboard=unnamed
set tabstop=4
set shiftwidth=4

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
noremap <leader>n :NERDTreeToggle<CR>
noremap <leader>v :vnew<CR>
noremap <leader>t :tabnew<CR>
noremap <leader>w :w<CR>
noremap <leader>q :q<CR>
noremap <leader>a {V}gq

""" ClangFormat
noremap <leader>f :ClangFormat<CR>

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
    Plug 'valloric/youcompleteme'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'   
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'tomasiser/vim-code-dark'
    Plug 'airblade/vim-gitgutter'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'tommcdo/vim-exchange'
	Plug 'vim-airline/vim-airline'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'ervandew/supertab'
	Plug 'rhysd/vim-clang-format'
call plug#end()

"""let g:ycm_autoclose_preview_window_after_completion=1

""" Colors
set termguicolors
colorscheme dracula

""" Undo 
if has('persistent_undo')      "check if your vim version supports it
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif     

set guioptions=

nnoremap <C-e> :tabnext<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:UltiSnipsEditSplit="vertical"

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:clang_format#code_style = "google"

let g:clang_format#style_options = {
			\ "UseTab": "Never",
			\ "IndentWidth": "4",
			\ "BreakBeforeBraces": "Attach",
			\ "AllowShortIfStatementsOnASingleLine": "false",
			\ "IndentCaseLabels": "false",
			\ "ColumnLimit": "80" 
			\}
