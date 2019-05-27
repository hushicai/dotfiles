function! SnipComplete()
    let dict = UltiSnips#SnippetsInCurrentScope()

    if empty(dict)
        return ''
    endif

    let line = getline('.')
    let start = col('.') - 1

    while start > 0 && line[start - 1] =~# '\k'
        let start -= 1
    endwhile

    let suggestions = []

    for item in keys(dict)
        let trigger = item
        let entry = {'word': item, 'menu': '[Snip] ' . dict[item]}
        call add(suggestions, entry)
    endfor

    if empty(suggestions)
        echohl Error | echon 'no match' | echohl None
    elseif len(suggestions) == 1
        let pos = getcurpos()
        if start == 0
            let str = trigger
        else
            let str = line[0:start - 1] . trigger
        endif
        call setline('.', str)
        let pos[2] = len(str) + 1
        call setpos('.', pos)
        call UltiSnips#ExpandSnippet()
    else
        call complete(start + 1, suggestions)
    endif
    return ''
endfunction

inoremap <c-l> <C-R>=SnipComplete()<CR>

