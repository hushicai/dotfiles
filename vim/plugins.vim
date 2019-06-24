"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_filetype = [
            \ 'vim',
            \ 'javascript',
            \ 'javascript.jsx', 
            \ 'typescript', 
            \ 'typescript.jsx',
            \ 'json']
call plug#begin('~/.plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind', 'NERDTreeFromBookmark' ] }
Plug 'scrooloose/nerdcommenter'
Plug 'mbbill/undotree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale', { 'for': g:ale_filetype }
Plug 'mhinz/vim-startify'
Plug 'terryma/vim-expand-region'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
  let g:solarized_termcolors=256
  let g:solarized_termtrans=1
  set t_Co=256
  set background=dark
  colorscheme solarized
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nt :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  => Nerd Commenter                                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDSpaceDelims = 1

""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
map <leader>j :CtrlP<cr>


"""""""""""""""""""""""""""
"  => UltiSnips           "
"""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:snips_author = 'Shicai Hu'
let g:snips_author_email = 'bluthcy@gmail.com'

""""""""""""""""""""""""""""""""
"  Easy Motion                 "
""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap s <Plug>(easymotion-overwin-f2)


"""""""""""""""""""""""""""""""""
"  general completion settings  "
"""""""""""""""""""""""""""""""""
set completeopt-=preview
" tab completion
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
"enter completion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"""""""""""""""""""""""""""""""""""
"  vim expand region              "
"""""""""""""""""""""""""""""""""""
let g:expand_region_text_objects = {
            \ 'iw'  :0,
            \ 'i"'  :0,
            \ 'i''' :0,
            \ 'i]'  :1,
            \ 'ib'  :1,
            \ 'iB'  :1,
            \ 'ip'  :0,
            \ 'a]'  :1,
            \ 'ab'  :1,
            \ 'aB'  :1,
            \ }

