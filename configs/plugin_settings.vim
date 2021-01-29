""" VIM-SFTP
noremap <leader>w :call SendCurrentFileToRemote()<CR>
noremap <leader>W :call SendAllOpenBuffersToRemote()<CR>

""" NERDTREE
noremap <bslash><bslash> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=60

""" CLANG FORMAT
let g:clang_format#code_style = "google"

""" ASYNCRUN
let g:asyncrun_open = 2

""" ULTISNIPS
let g:UltiSnipsSnippetDirectories=["~/.vim/configs/"]
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

""" ALE
let g:clang_compilation_database = './build'
let g:ale_linters = {'cpp': ['cppcheck']}

""" CTRLP
let g:ctrlp_use_caching=0

""" VIM RIPGREP
set updatetime=50
if executable('rg')
    let g:rg_derive_root='true'
endif

""" FZF
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }

""" COC.NVIM
let g:coc_enable_locationlist=0 
