""" PANELS
""" CLOSE PANEL
noremap <leader>q :q<CR>

""" MOVING AROUND
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

""" MAXIMIZE CURRENT WINDOW
noremap <leader>M <C-w>_<C-w><Bar> 
""" MAKE OPEN PANELS HAVE THE SAME SIZE
noremap <leader>m <C-w>=

""" GO TO A SPECIFIC TAB (FROM 1 TO 9)
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

""" CLOSE QUICKFIX
noremap <leader>c :cclose<CR>

""" OPEN QUICKFIX WITH 20 LINES
noremap <leader>o :copen 20<CR>

""" OPEN PANELS
noremap <leader>v :vnew<CR>
noremap <leader>n :new<CR>
noremap <leader>t :tabnew<CR>
noremap <leader>q :q<CR>

""" OPEN NOTES FILE
noremap <leader>0 :tabnew ~/.notes<CR>

""" OPEN DECLARATION/IMPLEMENTATION FILES
noremap <leader>c :e %<.cpp<CR>
noremap <leader>C :vnew %<.cpp<CR>
noremap <leader>h :e %<.h<CR>
noremap <leader>H :vnew %<.h<CR>

""" VIMGREP THE SELECTED TEXT
""" TODO: THIS IS TERRIBLE
noremap <leader>g y:vimgrep /<c-r>"/jg **/*.* <CR> :copen<CR>
" FIND TEXT WITH VIMGREP IN ALL FILES.
" TODO: ALSO TERRIBLE
noremap <leader>G :vimgrep //gj **/*.*<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

""" ALE
noremap gd :ALEGoToDefinition<CR>
noremap gt :ALEGoToTypeDefinition<CR>
noremap gD :ALEGoToDefinitionInVSplit<CR>
noremap gF :ALEFindReferences<CR>

""" REMOVE HIGHLIGHT FROM SEARCH
noremap mm :noh<CR>

""" SHOW FULL PATH OF CURRENT FILE
noremap <localleader>p :echo expand('%:p')<CR>

""" CLANG FORMAT
noremap <leader><leader> :ClangFormat<CR>

""" FIND FILE
noremap <leader>f :call fzf#run({'sink': 'e', 'down': '30%'})<CR>
noremap <leader>F :e **/*

