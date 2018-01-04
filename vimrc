set noautoindent
set nocindent
set nosmartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
autocmd BufWritePre * %s/\s\+$//e

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

set number
set background=dark
colorscheme PaperColor
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
