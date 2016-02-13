autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set nocindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
filetype plugin indent on

syntax enable

set number

set ts=4

set autoindent

set expandtab

set shiftwidth=4

set cursorline

set showmatch

let python_highlight_all = 1
