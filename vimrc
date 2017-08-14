if filereadable($LOCAL_ADMIN_SCRIPTS . "/master.vimrc")
  source $LOCAL_ADMIN_SCRIPTS/master.vimrc
else
  source $ADMIN_SCRIPTS/master.vimrc
endif

syntax on
set number
set ruler
set background=dark

" Visual things
set linespace=5
set guifont=Menlo:h12

" Enable Mouse
" set mouse=a

" Common Tweaks
set history=1000
let mapleader=" "
inoremap jj <ESC>

" Share system clipboard with vim
set clipboard=unnamed

set encoding=utf-8

" Whitespace stuff
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

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

set shell=/bin/zsh\ -l
