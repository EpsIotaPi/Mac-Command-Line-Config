" Basic settings
let mapleader=" "
syntax on
"show line number
set number
set relativenumber
"show line below cursor
set cursorline
"make character in window
set wrap
set showcmd
set wildmenu

" Search settings
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

"Version control for vi
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set mouse=a
set encoding=utf-8
let &t_ut=''

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Indent setting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" List setting
"set list
"set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start

" Code folding
set foldmethod=indent
set foldlevel=99

"Cursor settings:
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode

set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" key maping 
" sytax: 
" map {lhs} {rhs} 

" Direction key

inoremap <tab>q <Esc>
noremap j k
noremap k j
map W :w<CR>
map Q :q<CR>
map q :<Nul>
"restore vimrc
map R :w<CR>:source $MYVIMRC<CR>  

" Split screen
map <F1> :vsplit<CR>
map <F2> :split<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K
" Move cursor between screens
map <LEADER><Right> <C-w>l
map <LEADER><Left> <C-w>h
map <LEADER><Down> <C-w>j
map <LEADER><Up> <C-w>k
" Adjust screen size
map <C-Up> :res -2<CR>
map <C-Down> :res +2<CR>
map <C-Left> :vertical resize-2<CR>
map <C-Right> :vertical resize+2<CR>

" Tag
map tn :tabe<CR>
map tl :+tabnext<CR>
map th :-tabnext<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins setting
" use vim-Plug, from: https://github.com/junegunn/vim-plug
" syntax: 
" Plug '{github-url}'
" use ":PlugInstall" to install the plugins
" use ":PlugClean" to uninstall the plugins
" use ":PlugUpdate" to update the plugins

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
" Plug 'ycm-core/YouCompleteMe',{'do': 'python3 install.py --all'}

" Undo Tree
Plug 'mbbill/undotree/'

" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

" HTML, CSS, JavaScript, PHP, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'

Plug 'spf13/PIV', { 'for' :['php', 'vim-plug'] }
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" Python
Plug 'vim-scripts/indentpython.vim'

" Dash
Plug 'rizzatti/dash.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'

call plug#end()
