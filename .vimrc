set nocompatible
filetype off
set nu rnu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nmap <leader>m :MarkdownPreview<Return>
nmap <leader>M :MarkdownPreviewStop<Return>
nmap <leader>a %%a
nmap <leader>o o<Esc>o
nmap <leader>O O<Esc>O

" Gitgutter
set updatetime=100

" Syntastic config
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_config_file='.vim/syntastic_config'

" airline themes
let g:airline_theme='simple'

" hardtime
let g:hardtime_default_on = 1

syntax enable
set encoding=utf-8
set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
set hlsearch
set dir=/tmp
set noesckeys

" Colorscheme
colorscheme papaya
let g:papaya_gui_color='blue'
