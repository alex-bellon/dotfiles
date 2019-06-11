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
set nofoldenable
set clipboard=unnamed
syntax on

" Mappings
map <C-t> :NERDTreeToggle<CR>

" set crosshair colors
"highlight CursorLine   cterm=NONE ctermbg=darkgreen ctermfg=black guibg=darkred guifg=gray
"highlight CursorColumn cterm=NONE ctermbg=gray ctermfg=black guibg=darkred guifg=white

" Set crosshairs
":set cursorline    " enable the horizontal line
":set cursorcolumn  " enable the vertical line

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'dylanaraps/wal.vim'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'lilydjwg/colorizer'
Plugin 'RRethy/vim-illuminate'
Plugin 'junegunn/goyo.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mboughaba/i3config.vim'
" Plugin 'junegunn/limelight.vim' // not supported on urxvt

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:lightline = {
      \ 'colorscheme': 'wal',
\ }
