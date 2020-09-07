set nocompatible
filetype off
set nu rnu

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vivien/vim-linux-coding-style'
Plugin 'jiangmiao/auto-pairs'
Plugin 'takac/vim-hardtime'
" After each update, run yarn install in git repo of plugin
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'airblade/vim-gitgutter'
Plugin 'preservim/nerdcommenter'
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nmap <leader>m :MarkdownPreview<Return>
nmap <leader>M :MarkdownPreviewStop<Return>
nmap <leader>a %%a
nmap <leader>I %bi
nmap <leader>o o<Esc>o
nmap <leader>O O<Esc>O
nmap <leader>ko ddko

" Gitgutter
set updatetime=100

" Syntastic config
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_config_file='.vim/syntastic_config'

" airline themes
let g:airline_theme='minimalist'

" hardtime
let g:hardtime_default_on = 0

" Rust syntastic
let g:syntastic_rust_checkers = ['cargo']
let g:rustfmt_autosave = 1
"set hidden
let g:racer_cmd = "/usr/bin/racer"
let g:racer_experimental_completer = 1
augroup Racer
    autocmd!
    autocmd FileType rust nmap <buffer> gd         <Plug>(rust-def)
    autocmd FileType rust nmap <buffer> gs         <Plug>(rust-def-split)
    autocmd FileType rust nmap <buffer> gx         <Plug>(rust-def-vertical)
    autocmd FileType rust nmap <buffer> gt         <Plug>(rust-def-tab)
    autocmd FileType rust nmap <buffer> <leader>gd <Plug>(rust-doc)
    autocmd FileType rust nmap <buffer> <leader>gD <Plug>(rust-doc-tab)
augroup END

syntax enable
set encoding=utf-8
set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
set hlsearch
set dir=/tmp
set cursorline
set cursorcolumn
set fdm=syntax
autocmd FileType python setlocal foldmethod=indent
set list
" set noesckeys

" Colorscheme
colorscheme papaya
set termguicolors
let g:papaya_gui_color='blue'
