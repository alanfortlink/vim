call plug#begin('~/.vim/plugged')
""" PERSONAL PLUGINS
Plug 'alanfortlink/vim-sftp'

""" GIT
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

""" FZF
Plug 'kien/ctrlp.vim'

""" AUTOCOMPLETE MADNESS
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'thosakwe/vim-flutter'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

""" LINTERS
Plug 'rhysd/vim-clang-format'
Plug 'maksimr/vim-jsbeautify'

""" NAVIGATION
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/taglist.vim'

""" ASYNC RUN
Plug 'skywind3000/asyncrun.vim'

""" TEXT EDITING
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'

""" COLORSCHEMES
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'

call plug#end()
