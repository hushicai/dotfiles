
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
inoremap <silent> <c-k> <esc>d$i
