" Sets leader to space"
let mapleader = "\<Space>"

" Comment actual line depending on file extension
nnoremap <silent> <C-_> :call ToggleComment()<CR>

" Move actual line. j moves down, k moves up
" TODO: max top and bottom lines
nnoremap <C-j> ddp 
nnoremap <C-k> ddkP

" Copy actual line. j copies down, k copies up
nnoremap <C-A-j> yyp
nnoremap <C-A-k> yypk

" Saves the file
nnoremap <C-s> :w<CR>

" Autocompletes braces
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ` ``<ESC>i

" Spliting
nnoremap <silent> <leader>- :split<CR>
nnoremap <silent> <leader>\ :vsplit<CR>

" Moving into windows
nnoremap <silent> <leader>h :wincmd h<CR>
nnoremap <silent> <leader>l :wincmd l<CR>
nnoremap <silent> <leader>j :wincmd j<CR>
nnoremap <silent> <leader>k :wincmd k<CR>

" Moving into buffers
nnoremap <silent> <leader>q :bp<CR>
nnoremap <silent> <leader>e :bn<CR>

" Explorer
" nnoremap <silent> <leader>b :Lexplore<CR> :vertical resize 30<CR>
nnoremap <silent> <leader>b :NERDTreeToggle<CR>

" Moves the actual character by one or by words in backward and forward
nnoremap <C-l> xp
nnoremap <C-A-l> xEp
nnoremap <C-h> xhP
nnoremap <C-A-h> xhBP

" Inserts a semicolon (;) to the end of actual line 
nnoremap <leader>; $a;<ESC>j

" Reloads nvim configuration
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

" Changes window dimension with < >
nnoremap <leader>< 10<C-w><
nnoremap <leader>. 10<C-w>-
nnoremap <leader>> 10<C-w>>
nnoremap <leader>, 10<C-w>+

" Speed up cursor
nnoremap <leader>d 10j
nnoremap <leader>u 10k
