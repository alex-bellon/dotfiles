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

highlight Comment cterm=italic

" Mappings
map <C-t> :NERDTreeToggle<CR>
imap <C-BS> <C-W>

let g:lightline = {
      \ 'colorscheme': 'wal',
\ }
