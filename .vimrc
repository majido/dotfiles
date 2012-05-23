" disable vi compat mode 
set nocompatible

" enable pathogen
call pathogen#infect()

" enable filetype
filetype plugin indent on


" generic setup
set autoindent
set smartindent

set tabstop=2
set shiftwidth=2
set expandtab

set showmatch

set vb t_vb=
"enable line numbers
set number 

" turn off tab expansion for php and python
autocmd FileType php set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python set tabstop=4|set shiftwidth=4|set noexpandtab|set softtabstop=4
