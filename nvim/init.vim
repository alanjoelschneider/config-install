set number
set relativenumber
set cursorline
set cc=90
set clipboard=unnamed
set noautoindent
set nocindent
set smartindent
set signcolumn=no
set numberwidth=3
set ignorecase
set smartcase

if &compatible
    set nocompatible
endif

let g:polyglot_disabled = ['autoindent']
let g:onedark_config = { 'style': 'cool', 'ending_tildes': v:true }

so ~/.config/nvim/plugins.vim
so ~/.config/nvim/commands.vim
so ~/.config/nvim/functions.vim
so ~/.config/nvim/maps.vim

colorscheme onedark
