set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
"
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ludovicchabant/vim-gutentags'
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()
syntax on
filetype plugin indent on

set modeline
set background=dark
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set fileformat=unix
set splitright
set clipboard^=unnamed
set textwidth=119
set ruler


" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with spacebar                                                                                                                                                                     128& 11.6G5% carteaga@analysis 192.168.219.128
