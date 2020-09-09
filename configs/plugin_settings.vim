""" VIM-SFTP
noremap <leader>w :call SendCurrentFileToRemote()<CR>
noremap <leader>W :call SendAllOpenBuffersToRemote()<CR>

""" NERDTREE
noremap <bslash><bslash> :NERDTreeToggle<CR>

""" CLANG FORMAT
let g:clang_format#code_style = "google"

""" ASYNCRUN
let g:asyncrun_open = 2

""" ULTISNIPS
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsEditSplit="vertical"


