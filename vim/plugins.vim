"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_filetype = ['c', 'cpp']
let g:deoplete_filetype = [
            \ 'vim',
            \ 'javascript',
            \ 'javascript.jsx',
            \ 'typescript',
            \ 'typescript.jsx'
            \]
call plug#begin('~/.plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind', 'NERDTreeFromBookmark'] }
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer', 'for': g:ycm_filetype, 'on': [] }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins', 'for': g:deoplete_filetype, 'on': [] }
else
  Plug 'Shougo/deoplete.nvim', { 'for': g:deoplete_filetype, 'on': [] }
  Plug 'roxma/nvim-yarp', { 'for': g:deoplete_filetype }
  Plug 'roxma/vim-hug-neovim-rpc', { 'for': g:deoplete_filetype }
endif
Plug 'Shougo/neco-vim', { 'for': ['vim'] }
Plug 'sheerun/vim-polyglot'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale', { 'for': g:deoplete_filetype }
Plug 'mhinz/vim-startify'
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
