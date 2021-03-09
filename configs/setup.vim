" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


""" WORKAROUND ON FUNCTION KEYS IN INSERT MOVE
if has('nvim')
    au VimEnter * if exists('#UltiSnips_AutoTrigger')
        \ |     exe 'au! UltiSnips_AutoTrigger'
        \ |     aug! UltiSnips_AutoTrigger
        \ | endif
endif

""" SETUP LEADERS
let mapleader=','
let maplocalleader=';'

" DO NOT CREATE A SWAP FILE
set noswapfile

" RETURN TO LAST EDIT POSITION WHEN OPENING FILE
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" IGNORE WHEN RUNNING VIMGREP
:set wildignore+=**/build/**,cmake.bld/**,build/**,buildlinux/**,buildibm/**,buildsun/**,build,buildsun,buildibm,cmake.bld,compile_commands.json

set undodir=~/.vim/undo
set undofile

""" ENABLE MOUSE
set mouse=a
