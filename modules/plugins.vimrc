" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'unblevable/quick-scope'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'neomake/neomake'
Plugin 'tweekmonster/deoplete-clang2'
Plugin 'lervag/vimtex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nmap <leader>c :lclose<Return>
nmap <leader>n :lnext<Return>
nmap <leader>p :lprevious<Return>

" airline themes
let g:airline_theme='minimalist'

" Colorscheme
colorscheme gruvbox
set termguicolors
"let g:papaya_gui_color='blue'

" Deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#executable = '/usr/bin/clang'
let g:deoplete#sources#clang#autofill_neomake = 1
let g:deoplete#sources#clang#std = { 'c': 'c11', 'cpp': 'c++1x', 'cc': 'c++1x'}

"Neomake
" When writing a buffer (no delay).
call neomake#configure#automake('w')
let g:neomake_c_enabled_makers = ["clang"]
let g:neomake_cpp_enabled_makers = ["clang"]
let g:neomake_python_enabled_makers = ["pylint"]

" Vimtex
let g:vimtex_view_general_viewer = 'Zathura'
