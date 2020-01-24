set nocompatible
filetype off
execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'w0rp/ale'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'universal-ctags/ctags'

call vundle#end()            " required
filetype plugin indent on    " required


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
set nopaste
set ai
set noswapfile
set wildmenu
set title


highlight LineNr ctermfg=grey


" Setting space as leader
map <Space> <leader>

noremap <leader>p i import pdb; pdb.set_trace()<Esc>

" Allowing vim access to global buffer for copy/pasting
set clipboard+=unnamed
set pastetoggle=<leader>

" Remove trailing whitespace from certain filetypes
autocmd BufWritePre *.py %s/\s\+$//e
autocmd BufWritePre *.txt %s/\s\+$//e


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" w0rp/ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = { 'python': ['flake8', 'pylint']}
let g:ale_python_flake8_options = '--ignore=E501'
let g:ale_python_pylint_options = '--max-line-length=119 --disable=C0103'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gutentags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%{gutentags#statusline()}  " Inform when ctags are being generated
let g:gutentags_cache_dir = '~/.vim/ctags_dir'
