set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"my packages

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'kien/ctrlp.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'Rykka/clickable.vim'
"Plugin 'Rykka/clickable-things'
"Plugin 'severin-lemaignan/vim-minimap'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"  Plugin 'tomtom/tlib_vim'
"    Plugin 'garbas/vim-snipmate'
"Plugin 'Shougo/vimproc'
"Plugin 'Shougo/unite.vim'
"Plugin 'm2mdas/phpcomplete-extended'
Plugin 'ervandew/supertab'
"Plugin 'powerline/fonts'
"Plugin 'powerline/powerline'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"global
set mouse=a
imap jj <esc>
set showmode
set linespace=15
set nowrap
set tabstop=4
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>

"NERDTREE
"if no file loaded tree visible 
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>


"Airline

let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='powerlineish'
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


"colorscheme
"colorscheme PaperColor
colorscheme wombat
set number
set laststatus=2
"omnicomplete

"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP


"nerdtree
let g:NERDTreeWinSize=30
let g:NERDTreeWinPos = "right"
"syntastic


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
