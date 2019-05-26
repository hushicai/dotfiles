""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings = 1
let g:ycm_confirm_extra_conf = 0
set completeopt=menu,menuone
let g:ycm_global_ycm_extra_conf = expand('<sfile>:p:h:h:h').'/ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 1
nnoremap <silent> gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
