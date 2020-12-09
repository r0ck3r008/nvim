" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'fatih/vim-go'
Plugin 'unblevable/quick-scope'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

" Colorscheme
colorscheme gruvbox
set termguicolors
"let g:papaya_gui_color='blue'

" Deoplete
let g:deoplete#enable_at_startup = 1
