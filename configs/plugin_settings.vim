""" VIM-SFTP
noremap <leader>w :call SendCurrentFileToRemote()<CR>
noremap <leader>W :call SendAllOpenBuffersToRemote()<CR>

""" NERDTREE
noremap <bslash><bslash> :NERDTreeToggle<CR>

""" ALE
let g:ale_linters = {'cpp': ['clangd', 'clangtidy']}
let g:ale_completion_enabled = 1
let g:ale_enabled = 1
let g:ale_completion_max_suggestions = 10
let g:clang_compilation_database = './cmake.bld'

""" PREVENT ALE FROM COMPLETE
set completeopt=menu,menuone,preview,noselect,noinsert

""" CLANG FORMAT
let g:clang_format#code_style = "google"

" ASYNCRUN
let g:asyncrun_open = 2
