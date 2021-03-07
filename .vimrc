set nocompatible
filetype on  


map <F8> :w <CR> :!g++ % -o %< && printf '\e[1;32m%-Compiled Successfully\e[m' <CR> :vert term ./%< <CR>
map <F5> :w <CR> :!g++ % -o %< && ./%< <CR>
map NN :NERDTreeToggle<CR>
map OO :vsplit 01output.txt<CR>:vertical resize -20<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here

Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'amiorin/vim-project'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'morhetz/gruvbox'
Plugin 'mattn/emmet-vim'
Plugin 'vim-python/python-syntax' 
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'octol/vim-cpp-enhanced-highlight'	

call vundle#end()
filetype plugin indent on

"emmet-vim settings
let g:user_emmet_leader_key='.'

"Ulti-snips settings
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"NERDTree settings
let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
" custom starting path
call project#rc("~/projects")
Project '~/projects/pets/bohubrihi_first_project/first_project' , 'first_project'
Project '~/projects/pets/Shunnoek' , 'ShunnoEk'
" default starting path (the home directory)
call project#rc()


syntax on
set shiftwidth=4
set nospell
set number
set list listchars=tab:»\ ,trail:·,nbsp:⎵,precedes:<,extends:>
set ruler
set cindent
set wildmode=longest,list,full
set mouse=a
set statusline+=%F
set showcmd
set tabstop=4
set expandtab
set linebreak
set wrap
set autoread | au CursorHold * checktime | call feedkeys("lh")
set splitright

autocmd BufWinEnter * NERDTreeMirror
autocmd VimEnter * NERDTree | wincmd p
autocmd BufNewFile *.cpp 0r ~/.vim/templates/ctemplate.cpp
autocmd BufNewFile *.html 0r ~/.vim/templates/standard.html

"non breaking space setting
augroup RemoveSpaces
  autocmd!
  autocmd BufWritePre *.cpp silent! :%s/\%u00A0/ /g
augroup end


"settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"setting for python-syntax
let g:python_highlight_all = 1
