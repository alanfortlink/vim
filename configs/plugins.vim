call plug#begin('~/.vim/plugged')
""" PERSONAL PLUGINS
Plug 'alanfortlink/vim-sftp'

""" GIT
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

""" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

""" AUTOCOMPLETE MADNESS
" Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'thosakwe/vim-flutter'

""" LINTERS
Plug 'rhysd/vim-clang-format'
Plug 'maksimr/vim-jsbeautify'

""" NAVIGATION
Plug 'scrooloose/nerdtree'

""" ASYNC RUN
Plug 'skywind3000/asyncrun.vim'

""" TEXT EDITING
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

""" COLORSCHEMES
Plug 'tomasiser/vim-code-dark'

call plug#end()
