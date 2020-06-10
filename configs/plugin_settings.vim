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

""" CLANG FORMAT
let g:clang_format#code_style = "google"

""" ASYNCRUN
let g:asyncrun_open = 2

let g:lsc_auto_map = v:true

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


