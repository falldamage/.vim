" Autoinstall vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins begin
Plug 'scrooloose/syntastic'             " Syntax-checker. Might get new gh-user?
Plug 'scrooloose/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'    " Palenight-theme
Plug 'itchyny/lightline.vim'            " Lightline statusline/tabline

call plug#end()

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Statusbar settings
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'palenight',
  \  }

" Remaps
noremap ö :
noremap ä '
noremap å ^
noremap Å $

" Vital settings
set number
set linebreak
set showbreak=↳
set showmatch

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set mouse=a

" Theme settings
set background=dark
colorscheme palenight

set ruler
