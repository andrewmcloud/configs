"Andrew's vimrc

let mapleader =","

filetype plugin indent on
filetype plugin on
syntax enable

"gets rid of vi compatibility stuff
set nocompatible

set number

"tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"nice behavior
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set showmatch
set noswapfile

"searching and moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
nnoremap <leader><space> :noh<cr>
"use tab to move between matching ()[]{}
nnoremap <tab> %
vnoremap <tab> %

"remap ; to :
nnoremap ; :

"remap jj to <ESC>
inoremap jj <ESC>

"remap <ctrl-w> v <ctrl-w> l - create vertical split and switch to it
nnoremap <leader>w <C-w>v<C-w>l

"navigating window splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Python Specific
let python_highlight_all = 1
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set nocindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

""""""""""""""""""""""""VUNDLE""""""""""""""""""""""""
"Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'plasticboy/vim-markdown'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/NERDCommenter'


"All Plugins must be added between Plugins and this end comment
call vundle#end()
filetype plugin indent on
""""""""""""""""""""""""VUNDLE""""""""""""""""""""""""

