" General Stuff
set nocompatible
filetype off
set nu rnu
syntax enable
set encoding=utf-8
set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
set hlsearch
set dir=/tmp
set cursorline
set cursorcolumn
set fdm=syntax
autocmd FileType python setlocal foldmethod=indent
autocmd FileType text setlocal spell spelllang=en_us
autocmd FileType gitcommit setlocal spell spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us
set list
set hidden
set nobackup
set nowritebackup
set updatetime=100
set shortmess+=c

" Bindings
" Open with 2 new lines
nmap <leader>o o<Esc>o
" Open with 2 new lines above
nmap <leader>O O<Esc>O
nmap <leader>ko ddko
" Create a vertical split and move to it
nmap <leader>v <C-w>v<C-w>w<Return>
" Create a horizontal split and move to it
nmap <leader>s <C-w>s<C-w>w<Return>
" Create a terminal here
nmap <leader>T :term<Return>
" Create a terminal in a horizontal split and move to it
nmap <leader>t <leader>s<Esc><leader>TA
