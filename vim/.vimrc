set nocompatible              " be iMproved, required
filetype off                  " required
set laststatus=2
set tabstop=4
set mouse=a
set number
set numberwidth=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:lightline = {
      \ 'colorscheme': 'wombat',
\ }
