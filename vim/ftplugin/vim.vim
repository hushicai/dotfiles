""""""""""""""""""""""""""""""""""""""""""""
"  settings                                "
""""""""""""""""""""""""""""""""""""""""""""
" quick help K
setlocal keywordprg=:help
" nnoremap <buffer> K :help <C-r><C-w><CR>

"""""""""""""""""""""""""""""""""""""""""""
"  ale                                    "
"""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
  \   'vim': ['vint'],
  \}
