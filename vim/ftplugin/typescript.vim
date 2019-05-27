"""""""""""""""""""""""""""""""""""
"  ale                            "
"""""""""""""""""""""""""""""""""""
let g:ale_linters = {
  \   'typescript': ['tsserver', 'eslint'],
  \}
let g:ale_fixers = {
  \   'typescript': ['eslint'],
  \}

"""""""""""""""""""""""""""""""""""""""
"  ycm                                "
"""""""""""""""""""""""""""""""""""""""
" let g:ycm_semantic_triggers = {
            " \ 'typescript': ['re!\w{4}']
            " \ }
            "
