function! ycm#setup()
    if index(g:ycm_filetype, &filetype) == -1
        return
    endif
    call plug#load('YouCompleteMe')
    let g:ycm_add_preview_to_completeopt = 0
    let g:ycm_min_num_identifier_candidate_chars = 2
    let g:ycm_collect_identifiers_from_comments_and_strings = 1
    let g:ycm_complete_in_strings = 1
    let g:ycm_confirm_extra_conf = 0
    let g:ycm_global_ycm_extra_conf = '~/dotfiles/ycm_extra_conf.py'
    nmap <buffer><silent><leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
    call youcompleteme#Enable()
endfunction

augroup x_ycm_filetype
    autocmd!
    autocmd FileType * call ycm#setup()
augroup END
