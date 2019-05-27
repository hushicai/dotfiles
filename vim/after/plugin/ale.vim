function! ale#setup()
	let l:lsp_found=0
	for l:linter in ale#linter#Get(&filetype) | if !empty(l:linter.lsp) | let l:lsp_found=1 | endif | endfor
	if (l:lsp_found)
        setlocal omnifunc=ale#completion#OmniFunc
        nnoremap <buffer> <silent> gd <Plug>(ale_go_to_definition)
        nnoremap <buffer> <silent> gf <Plug>(ale_find_references)
	endif
endfunction
autocmd BufEnter * call ale#setup()
