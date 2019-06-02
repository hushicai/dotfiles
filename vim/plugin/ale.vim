function! s:Setup()
    if index(g:deoplete_filetype, &filetype) == -1
        return
    endif
    echo 'ale#setup: ' . &filetype
    let g:ale_completion_delay = 500
    let g:ale_echo_delay = 20
    let g:ale_lint_delay = 500
    let g:ale_echo_msg_format = '[%linter%] %code: %%s'
    let g:ale_lint_on_text_changed = 'normal'
    let g:ale_lint_on_insert_leave = 1
    let g:ale_sign_error = '✘'
    let g:ale_sign_warning = '⚠'
    let g:ale_fix_on_save = 1
    let g:ale_linters_explicit = 1
    nmap <buffer><silent> [c <Plug>(ale_previous_wrap)
    nmap <buffer><silent> ]c <Plug>(ale_next_wrap)
    let l:lsp_found=0
    for l:linter in ale#linter#Get(&filetype) | if !empty(l:linter.lsp) | let l:lsp_found=1 | endif | endfor
    if (l:lsp_found)
        setlocal omnifunc=ale#completion#OmniFunc
        nmap <buffer><silent><leader>gd <Plug>(ale_go_to_definition)
        nmap <buffer><silent><leader>gf <Plug>(ale_find_references)
    endif
endfunction

augroup x_ale_filetype
    autocmd!
    autocmd FileType * call s:Setup()
augroup END
