" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Bundle 'Valloric/YouCompleteMe'



call vundle#end()
filetype plugin indent on


syntax on
set number
set ruler
set colorcolumn=80
set background=dark
colorscheme solarized

" Visual things
set linespace=5
set guifont=Menlo:h12
set cursorline

" Enable Mouse
set mouse=a

" Common Tweaks
set history=1000
let mapleader=","
inoremap jj <ESC>
set spell

" Share system clipboard with vim
set clipboard=unnamed

" Context-dependent cursor in the terminal
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set encoding=utf-8

" Whitespace stuff
set nowrap
set textwidth=79
set autoindent
set copyindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab

" Searching
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,*/vendor/gems/*
set wildignore+=*.pyc,*.pyo,*.egg-info,*.egg,*/env/*

" Status bar
set laststatus=2

" Enable Folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" See docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Make Python follow PEP8 (http://www.python.org/dev/peps/oeo-0008/)
au FileType python setlocal expandtab softtabstop=4 tabstop=4 shiftwidth=4


" Python syntax highlighting
let python_highlight_all=1

" Split movement
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Fast writing and quitting
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Bindings
nmap <Leader>f :Ack<space>
nmap <Leader>r :Replace<space>
nmap <Leader>m :ZoomWin<CR>
vmap <Leader>> >gv
vmap <Leader>< <gv
