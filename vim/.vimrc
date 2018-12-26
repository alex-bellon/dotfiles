set nocompatible              " be iMproved, required
filetype on                 " required
set laststatus=2
set scrolloff=2
set expandtab
set tabstop=4
set mouse=a
set number
set numberwidth=5
set pastetoggle=<F2>
set foldenable
syntax on

" Mappings
map <C-t> :NERDTreeToggle<CR>

" highlight whitespace characters
set list
set listchars=tab:>-,trail:.,extends:#,nbsp:.

" set crosshair colors
highlight CursorLine   cterm=NONE ctermbg=gray ctermfg=black guibg=darkred guifg=white
highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=black guibg=darkred guifg=white

" Set crosshairs
:set cursorline    " enable the horizontal line
:set cursorcolumn  " enable the vertical line

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'dylanaraps/wal.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:lightline = {
      \ 'colorscheme': 'wal',
\ }
