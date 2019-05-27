
" Quick edit
noremap <leader>ee :e $MYVIMRC<cr>
" Quick re-source
noremap <Leader>ss :source $MYVIMRC<cr>

" shell like moving
inoremap <silent> <c-e> <esc>$a
inoremap <silent> <c-a> <esc>^i
inoremap <silent> <c-f> <right>
inoremap <silent> <c-b> <left>
inoremap <silent> <c-d> <esc><right>xi

" omnifunc
set completeopt-=preview
autocmd Filetype *
      \   if &omnifunc == "" |
      \    setlocal omnifunc=syntaxcomplete#Complete |
      \   endif

" tab completion
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

"enter completion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


