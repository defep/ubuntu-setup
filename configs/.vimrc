" General
set nocompatible
set encoding=utf-8
set fileencoding=utf-8

" UI
set number
set relativenumber
set cursorline
set scrolloff=8
set signcolumn=yes

" Syntax
syntax on

" Indentation
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Mappings
let mapleader = " "
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h :nohlsearch<CR>

" Splits
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>sh :split<CR>

" Move between splits
nnoremap <leader>hj :wincmd h<CR>
nnoremap <leader>hk :wincmd k<CR>
nnoremap <leader>hj :wincmd j<CR>
nnoremap <leader>hl :wincmd l<CR>

" Plugins (requires vim-plug)
" call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-sensible'
" call plug#end()

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
