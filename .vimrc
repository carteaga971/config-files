et nocompatible              " required
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
Plugin 'universal-ctags/ctags'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'w0rp/ale'
Plugin 'ervandew/supertab'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
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
set splitright
set textwidth=119
set ruler
set nu
set backspace=indent,eol,start

highlight LineNr ctermfg=grey

let g:ale_linters = { 'python': ['flake8', 'pylint']}
let g:ale_python_flake8_options = '--ignore=E501
let g:ale_python_pylint_options = '--max-line-length=119'


" If more than one window and previous buffer was NERDTree, go back to it.
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

" Setting space as leader
map <Space> <leader>

" CtrlP mapping
nmap <leader>p :CtrlP<cr>
