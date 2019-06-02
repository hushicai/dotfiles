let s:deoplete_loaded = 0

function! s:setup_deoplete()
    if index(g:deoplete_filetype, &filetype) == -1 || s:deoplete_loaded == 1
        return
    endif 
    let s:deoplete_loaded = 1
    call plug#load('deoplete.nvim')
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
    autocmd FileType * call s:setup_deoplete()
augroup END
