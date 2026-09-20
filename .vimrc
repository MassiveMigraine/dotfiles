":set nocompatible
" Plugin control with vim-plug
call plug#begin('~/.nix-config/home/dotfiles/.vim/plugged')
  Plug 'sheerun/vim-polyglot'
  Plug 'dense-analysis/ale'
  Plug 'ap/vim-css-color'
  Plug 'preservim/nerdtree'
call plug#end()

"Tab and index stuff
"set expandtab ts=4 sw=4 ai
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number

"Enable Clipboard
"set clipboard=unnamedplus

" Tilebar at the top
let s:host = split(hostname(), '\.')[0]
autocmd BufEnter * let &titlestring = s:host . ' vim: ' . expand("%:t")
set title

"let g:AutoPairsFlyMode = 1
"let g:ale_python_flake8_options = '--ignore E722,E501'
"let g:ale_python_auto_pipenv = 1

"let g:ale_linters= {
"  \ 'python': ['flake8', 'pylint'],
"  \ 'javascript': ['eslint'],
"  \ 'html': ['tidy'],
"\}

set t_Co=256
