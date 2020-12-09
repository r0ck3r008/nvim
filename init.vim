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
" After each update, run yarn install in git repo of plugin
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'unblevable/quick-scope'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nmap <leader>m :MarkdownPreview<Return>
nmap <leader>M :MarkdownPreviewStop<Return>
nmap <leader>a %%a
nmap <leader>I %bi
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
" Syntastic config let g:syntastic_c_config_file='.vim/syntastic_config' let g:syntastic_go_checkers = ['go'] let g:syntastic_tex_checkers = ['chktex'] set statusline+=%#warningmsg# set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
nmap <leader>c :lclose<Return>
nmap <leader>n :lnext<Return>
nmap <leader>p :lprevious<Return>

" airline themes
let g:airline_theme='minimalist'

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

" Colorscheme
colorscheme gruvbox
set termguicolors
"let g:papaya_gui_color='blue'
