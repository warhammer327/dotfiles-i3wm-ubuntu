set nocompatible
filetype on  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'altercation/vim-colors-solarized'
Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'amiorin/vim-project'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on

let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
" custom starting path
call project#rc("~/projects")
Project '~/projects/pets/bohubrihi_first_project/first_project' , 'first_project'
" default starting path (the home directory)
call project#rc()



set number
set laststatus=2
set ruler
syntax on
set cindent
set wildmenu
set mouse=a
set statusline+=%F
set showcmd
set tabstop=4
set expandtab


autocmd VimEnter * NERDTree | wincmd p
autocmd BufNewFile *.cpp 0r ~/.vim/templates/problemsolving.cpp


"settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
