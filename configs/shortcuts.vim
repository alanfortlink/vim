""" PANELS
""" CLOSE PANEL
noremap <leader>q :q<CR>

""" MOVING AROUND
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

""" RESIZING
noremap <C-M-h> 3<C-w><
noremap <C-M-l> 3<C-w>>
noremap <C-M-k> 1<C-w>-
noremap <C-M-j> 1<C-w>+

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
noremap <leader>b :vnew %:p:h/CMakeLists.txt<CR>

""" VIMGREP THE SELECTED TEXT
""" TODO: THIS IS TERRIBLE
noremap <leader>g y:Rg -j1 --glob "!{build,cmake.bld,compile_commands.json}" <c-r>"<CR>
" FIND TEXT WITH VIMGREP IN ALL FILES.
" TODO: ALSO TERRIBLE
noremap <leader>G :Rg -j1 --glob "!{build,cmake.bld,compile_commands.json}" 

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-declaration)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-diagnostic-next)
nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> gb :bp<CR>
nmap <silent> gA :CocAction<CR>

""" REMOVE HIGHLIGHT FROM SEARCH
noremap mm :noh<CR>

""" SHOW FULL PATH OF CURRENT FILE
noremap <localleader>p :echo expand('%:p')<CR>

""" CODE FORMAT
autocmd FileType cpp,h,c noremap <leader><leader> :ClangFormat<CR>
autocmd FileType dart noremap <leader><leader> :DartFmt<CR>
autocmd FileType js,javascript,python,py noremap <leader><leader> :CocCommand prettier.formatFile<CR>

""" FIND FILE
noremap <leader>f :Files<CR>
noremap <leader>F :e **/*

""" UNDO
noremap <leader>u :UndotreeToggle<CR>

""" TAGS
let Tlist_Use_Right_Window   = 1
let Tlist_WinWidth = 60
noremap tt :TlistToggle<CR>

""" FLUTTER
autocmd FileType dart noremap <F10> :FlutterRun<CR>
autocmd FileType dart noremap <F7> :FlutterHotRestart<CR>
autocmd FileType dart noremap <F9> :FlutterHotReload<CR>

""" QUICK GOTO FILES
nnoremap <F5> :e %<CR>zz
nnoremap <leader>s :e ~/.vim/configs/shortcuts.vim<CR>
nnoremap <F12> :source ~/.vimrc<CR>
