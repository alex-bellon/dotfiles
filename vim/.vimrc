set nocompatible              " be iMproved, required

filetype on                 " required
syntax on

set laststatus=2
set scrolloff=2
set expandtab
set tabstop=4
set mouse=a
set number
set numberwidth=5
set pastetoggle=<F2>
set nofoldenable
set clipboard=unnamed
set backspace=indent,eol,start

highlight Comment cterm=italic

" Mappings
noremap! <C-BS> <C-w>

map <ESC>^[[1;5C <C-Right>
map <ESC>^[[1;5D <C-Left>

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
