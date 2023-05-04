et nocompatible
  2 filetype off
  3
  4 " set the runtime path to include Vundle and initialize
  5 set rtp+=~/.vim/bundle/Vundle.vim
  6
  7 call vundle#begin()
  8
  9 Plugin 'gmarik/Vundle.vim'
 10 Plugin 'vim-scripts/indentpython.vim'
 11 Plugin 'w0rp/ale'
 12 Plugin 'junegunn/fzf'
 13 Plugin 'jeetsukumaran/vim-pythonsense'
 14 Plugin 'davidhalter/jedi-vim'
 15
 16 call vundle#end()            " required
 17 filetype plugin indent on    " required
 18
 19
 20 syntax on
 21 filetype plugin indent on
 22
 23 set modeline
 24 set background=dark
 25 set tabstop=4
 26 set softtabstop=4
 27 set shiftwidth=4
 28 set expandtab
 29 set autoindent
 30 set smartindent
 31 set splitright
 32 set textwidth=119
 33 set ruler
 34 set nu
 35 set backspace=indent,eol,start
 36 set nopaste
 37 set ai
 38 set noswapfile
 39 set wildmenu
 40 set title
 41
 42 highlight LineNr ctermfg=grey
 43
 44 " Setting space as leader
 45 map <Space> <leader>
 46
 47 noremap <leader>p i import pdb; pdb.set_trace()<Esc>
 48
 49 " Allowing vim access to global buffer for copy/pasting
