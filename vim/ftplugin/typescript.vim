"""""""""""""""""""""""""""""""""""
"  ale                            "
"""""""""""""""""""""""""""""""""""
let g:ale_linters = {
  \   'typescript': ['tsserver', 'eslint'],
  \}
let g:ale_fixers = {
  \   'typescript': ['eslint'],
  \}
