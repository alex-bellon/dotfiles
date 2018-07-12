set nocompatible              " be iMproved, required
filetype off                  " required
set laststatus=2
set mouse=a
set number
set numberwidth=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
"Plugin 'The-NERD-tree'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"autocmd vimenter * NERDTree
let g:lightline = {
      \ 'colorscheme': 'wombat',
\ }
