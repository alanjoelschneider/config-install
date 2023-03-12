function! Format()
    let pos = getpos('.')
    execute 'TrimEnd'
    execute 'TrimExtraLines'
    normal! gg=G
    call setpos('.', pos)
    update
endfunction

autocmd BufWritePost * silent call Format()

let g:Max = {a, b -> (a > b ? a : b)}

function! CorrectBraces()
    let line = getline('.')
    let posX = getpos('.')[2] " La posicion x se empieza a contar desde 1
    let braces = strpart(line, posX - 2, 2) " La primer posicion de la cadena es 0

    if braces == "()" || braces == "{}" || braces == "[]"
        return "\n\n"
        ""		call system(':%s/\(.\{'.posX.'\}\)/\1inserted text/gc')
        " 		call setline('.', strpart(line, 0, len(line) - 1))
        "		execute "normal! a\n\n\<ESC>ki\t"
    else
        "		execute "normal! a\<CR>"
    endif

    return "\n"

endfunction

" inoremap <CR> <C-R>=CorrectBraces()<CR
" TODO: usar <C-R>= para ejecutar un comando en modo insert
" en vez de tener que usar <ESC>
" inoremap <CR> <ESC>:call CorrectBraces()<CR>i
