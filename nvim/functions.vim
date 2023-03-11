function! Trim()
	let pos = getpos('.')
	execute 'TrimEnd'
	execute 'TrimExtraLines'
	call setpos('.', pos)
endfunction

autocmd BufWritePost * silent call Trim()
