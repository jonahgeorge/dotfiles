" honey badgerrc
execute pathogen#infect()

filetype plugin indent on
syntax on
" color solarized

set autoread
set number ruler
set autoindent
set expandtab
set smarttab
set nocompatible
set backspace=2
set commentstring=#\ %s
set display=lastline
set incsearch       " Incremental search
set lazyredraw
set pastetoggle=<F2>
set scrolloff=1
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set smartcase       " Case insensitive searches become sensitive with capitals
set smarttab        " sw at the start of the line, sts everywhere else
set ttimeoutlen=50  " Make Esc work faster
set visualbell
set virtualedit=block
set wildmenu
set wildmode=longest:full,full
set wildignore+=tags
set shiftwidth=2
set tabstop=4

imap jj <Esc>
map <Tab> <C-W>w

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

let g:EasyMotion_leader_key = '<Space>' 
