"""""""""""""""""""""""""""""""""""""""
"  ale                                "
"""""""""""""""""""""""""""""""""""""""

let g:ale_linters = {
            \ 'javascript': ['eslint'],
            \ }
let g:ale_fixers = {
            \  'javascript': ['eslint'],
            \}


"""""""""""""""""""""""""""""""""""""""
"  ycm                                "
"""""""""""""""""""""""""""""""""""""""
let g:ycm_semantic_triggers = {
            \ 'javascript': ['re!\w{4}']
            \ }

