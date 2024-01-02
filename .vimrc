set nocompatible
syntax on

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
set ai
set noswapfile
set wildmenu
set title
set laststatus=2

highlight LineNr ctermfg=grey

" Setting space as leader
map <Space> <leader>

noremap <leader>p i import pdb; pdb.set_trace()<Esc>

" Allowing vim access to global buffer for copy/pasting
set clipboard=unnamedplus

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" w0rp/ale
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = { 'python': ['flake8', 'mypy']}
let g:ale_python_flake8_options = '--ignore=E501'
let g:ale_python_pylint_options = '--max-line-length=119 --disable=C0103'
let g:ale_completion_enabled = 0
let g:ale_python_mypy_options = '--ignore-missing-imports'
let g:ale_python_mypy_options = '--follow-imports=silent'
let b:ale_python_mypy_options='--no-pretty'
let g:ale_python_mypy_ignore_invalid_syntax=1

let g:jedi#completions_enabled = 1

""""""
"Black
""""""
let g:black_linelength=119
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end
