" local vimrc
set exrc
set secure

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

" shell like moving
inoremap <silent> <c-e> <esc>$a
inoremap <silent> <c-a> <esc>^i
inoremap <silent> <c-f> <right>
inoremap <silent> <c-b> <left>
inoremap <silent> <c-d> <esc><right>xi
inoremap <silent> <c-k> <esc>d$i

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

