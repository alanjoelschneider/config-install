set number
set relativenumber
set cursorline
set cc=90
set clipboard=unnamed 
set noautoindent
set nosmartindent
set nocindent
set signcolumn=no
set numberwidth=3

if &compatible
	set nocompatible
endif

let g:polyglot_disabled = ['autoindent']
let g:onedark_config = { 'style': 'deep' }

so ~/.config/nvim/plugins.vim
so ~/.vim/ownplugins/comment.vim
so ~/.config/nvim/maps.vim

colorscheme onedark
highlight LineNr guibg=none
" highlight SignColumn guibg=#21283b

let g:Max = {a, b -> (a > b ? a : b)}

function! CorrectBraces()
	let line = getline('.')
	let posX = getpos('.')[2]
	let braces = strpart(line, posX - 1, 2)

	if braces == "()" || braces == "{}" || braces == "[]"
" 		call setline('.', strpart(line, 0, len(line) - 1))
		execute "normal! a\n\n\<ESC>ki\t"
	else
		execute "normal! a\<CR>"
	endif
	
endfunction 

" TODO: usar <C-R>= para ejecutar un comando en modo insert
" en vez de tener que usar <ESC>
" inoremap <CR> <ESC>:call CorrectBraces()<CR>i
