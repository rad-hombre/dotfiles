set nocompatible    "Use Vim settings, rather than vi settings
set number          "Show numbers lines
syntax on           "Enable syntax highlighting
set incsearch       "Find the next match as we type the search
set showmatch       "Show matching parenthesis, curly braces, etc
set noswapfile      "Disables creation of annoying swap files
set nobackup        "Disables creation of backup files
set tabstop=2       "Set tabs to 4 spaces
set shiftwidth=2    "Sets visual mode indenting to 4 spaces
set ai              "Sets autoindent on
let mapleader = ","
set expandtab       "Use spaces, not actual tabs
set softtabstop=2   "Backspace set to 4 spaces
set ignorecase      "Ignore case when searching
set hlsearch        "highlight search results
set autoindent
set fileencoding=utf-8
set history=1000    "Remember more
set undolevels=1000 "Give me more Undo
filetype plugin on  "Need on for Nerdcommentor
filetype indent on

" For comments
au FileType c,cpp setlocal comments-=:// comments+=f://

set textwidth=80
set ruler
" Highlight everything over 80th column
"match ErrorMsg '\%>80v.\+'


"====== [ Custom Mappings ] ======

" Faster movement between splits
:nmap <C-j> <C-w>j
:nmap <C-k> <C-w>k
:nmap <C-h> <C-w>h
:nmap <C-l> <C-w>l

" Remap?
:nmap <C-e> :Explore<cr>

" Easier indenting in visual mode
vnoremap < <gv
vnoremap > >gv

" Disable god-awful auto-commenting, <stays here!>
au FileType * setl fo-=cro
