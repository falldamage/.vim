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
Plug 'scrooloose/nerdtree'              " Remove?
Plug 'drewtempelmeyer/palenight.vim'    " Palenight-theme
Plug 'itchyny/lightline.vim'            " Lightline statusline/tabline
Plug '/usr/bin/fzf'                     " Installation directory for fzf. Might want to change.
Plug 'junegunn/fzf.vim'                 " Fzf for vim
Plug 'airblade/vim-gitgutter'           " Git info on lines

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
let mapleader = ' '
" Reload vimrc
noremap <Leader>s :source $MYVIMRC<CR>
" Removes search highlight
noremap <Leader>d :nohlsearch<CR>
" fzf-specific. Might want to add an if-case here.
noremap <Leader>p :Buffers<CR>
noremap <Leader>o :Files<CR>

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

set mouse=a                             " Makes mouse work in nvim.

set hidden                              " To be able to work with buffers.

" Theme settings
set background=dark
colorscheme palenight

set ruler
