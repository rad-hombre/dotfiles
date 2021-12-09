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

set lines=50 columns=150
set textwidth=80
set ruler 
"set colorcolumn=80
":hi ColorColumn guibg=#2d2d2d ctermbg=246

" Highlight everything over 80th column
"match ErrorMsg '\%>80v.\+'

"====== [ Theme Settings ] ====== 
colo molokai "Set molokai background
let g:molokai_original=1 
set background=light
set t_Co=256        "Force vim to use 256 colors, essential for molokai background

"====== [ Custom Mappings ] ====== 
" Clear highlights after search with ESC or CTRL+[  
:nnoremap <silent> <esc> :noh<cr><esc>

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
"set foldmethod=indent   "Better folding

"====== [ Syntastic ] ====== 
" Install JS linters globally w/ node for a better time
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'

"====== [ Ctrl-P ] ====== 
" No let Fuzzy-finder into the chaos that is node_modules 
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"====== [ Emmet ] ====== 
let g:user_emmet_expandabbr_key = ',e'
let g:use_emmet_complete_tag = 1

"====== [ Autocorrect ] ====== 
iab teh the
iab Teh The
iab Taht That
iab taht that
iab alos also
iab Aslo Also
iab Alos Also
iab seperate separate 
iab Seperate Separate 
