set incsearch

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Set relative line numbers
set relativenumber

" Show line numbers
set number

" Case-insensitive searching.
set ignorecase

" But case-sensitive if expression contains a capital letter.
set smartcase

" Default to global substitutions on lines
set gdefault

" Enable syntax highlight by default
syntax on

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Plugins
call plug#begin()

" Sensible defaults
Plug 'tpope/vim-sensible'

"Syntax checking
Plug 'scrooloose/syntastic'

"Swift
Plug 'keith/swift.vim'

call plug#end()
