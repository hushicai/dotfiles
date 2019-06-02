function! deoplete#setup()
    if index(g:deoplete_filetype, &filetype) == -1
        return
    endif 
    echo 'deoplete#setup: ' . &filetype
    let g:deoplete#sources = {
                \ '_': ['ale', 'ultisnips'],
                \ 'vim': ['vim'],
                \ }
    call deoplete#custom#source('_',
                \ 'matchers', ['matcher_head'])
    call deoplete#enable()
endfunction

augroup x_deoplete_filetype
    autocmd!
    autocmd FileType * call deoplete#setup()
augroup END
