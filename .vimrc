
" i am Matthew Orndoff and this is my vimrc 
" there are many like it, but this one is mine

set nocompatible    "Use Vim settings, rather than vi settings 
set number          "Show numbers lines
syntax on           "Enable syntax highlighting
set incsearch       "Find the next match as we type the search
set showmatch       "Show matching parenthesis, curly braces, etc
set noswapfile      "Disables creation of annoying swap files
set nobackup        "Disables creation of backup files
set tabstop=4       "Set tabs to 4 spaces
set shiftwidth=4    "Sets visual mode indenting to 4 spaces
set ai              "Sets autoindent on
let mapleader = "," 
set expandtab       "Use spaces, not actual tabs 
set softtabstop=4   "Backspace set to 4 spaces 
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



" No 
set lines=50 columns=150
set textwidth=80
set ruler 
"set colorcolumn=80
":hi ColorColumn guibg=#2d2d2d ctermbg=246

" Highlight everything over 80th column
"match ErrorMsg '\%>80v.\+'


"=====================================
"          Theme Settings	
"=====================================

colo molokai "Set molokai background
let g:molokai_original=1 
set background=light
set t_Co=256        "Force vim to use 256 colors, essential for molokai background


"=====================================
"          Vundle	
"=====================================

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Let Vundle manage vundle package
Bundle 'gmarik/vundle' 

" My Bundles here:

"Improved commenting <leader>+ci, <leader>+cs, and <leader>+cu are your friends
Bundle 'scrooloose/nerdcommenter'
"Improved syntax checking for multiple languages
Bundle 'scrooloose/syntastic' 
"Improves vim's JS indendation
Bundle 'pangloss/vim-javascript' 
"Like zen-coding or emmet for vim
Bundle 'mattn/emmet-vim' 
"Bundle 'vim-scripts/c.vim'

Bundle 'kien/ctrlp.vim.git'



"=====================================
"          Syntastic  
"=====================================

" Install JS linters globally w/ node for a better time

" JSHint and not JSLint because Crockford's creation is maniacal 
" and warns me about dumb shit 

let g:syntastic_javascript_checkers = ['jshint']




"=====================================
"          Custom Mappings
"=====================================
:map ,php :! clear && php %<cr>
:map ,py :! clear && python %<cr>
:map ,rb :! clear && ruby %<cr>

":map ,g++ :! clear && g++ *.cpp *.o ./a.out<cr> 

:map ,js :! clear && node %<cr>

" Clear highlights after search with ESC or CTRL+[  
:nnoremap <silent> <esc> :noh<cr><esc>

" Faster movement between splits 
:nmap <C-j> <C-w>j
:nmap <C-k> <C-w>k
:nmap <C-h> <C-w>h
:nmap <C-l> <C-w>l


" Easier indenting in visual mode
vnoremap < <gv
vnoremap > >gv

"=====================================
"          Emmet 	
"=====================================

let g:user_emmet_settings = {
  \  'indentation' : '  ',
  \  'perl' : {
  \    'aliases' : {
  \      'req' : 'require '
  \    },
  \    'snippets' : {
  \      'use' : "use strict\nuse warnings\n\n",
  \      'warn' : "warn \"|\";",
  \    }
  \  }
  \}

let g:user_emmet_expandabbr_key = ',e'

let g:use_emmet_complete_tag = 1

"=====================================
"          c.vim	
"=====================================


"Make c.vim use c99 compiler instead of standard gcc
"Let  g:C_CCompiler = 'c99'

"=====================================
"  Randoms (might be useful later)	
"=====================================

" only show number line for current window
" set number
" au WinEnter * :setlocal number
" au WinLeave * :setlocal nonumber

"Automatically resize vertical splits
" au WinEnter * :set winfixheight
" au WinEnter * :wincmd = 

au FileType * setl fo-=cro "disable god-awful auto-commenting, <stays here!>

"=====================================
"          Gvim  
"=====================================

if has("gui_running")
    set guifont=Consolas:h11
    set guioptions=-T                       "removes toolbar
    set guioptions=-r                       "removes right-hand scrollbar
endif

"=====================================
" Autocorrect my derps   
"=====================================

iab teh the
iab Teh The
iab Taht That
iab taht that
iab alos also
iab Aslo Also
iab Alos Also
iab seperate separate 
iab Seperate Separate 




