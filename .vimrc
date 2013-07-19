set nocompatible	"Use Vim settings, rather than vi settings (much better shit!) 

set number 			"show numbers lines
syntax on
set incsearch 		"find the next match as we type the search
set showmatch		"show matching parenthesis, curly braces, etc
set noswapfile		"disables creation of annoying swap files
set nobackup 		"disables creation of backup files
set tabstop=4 		"set tabs to 4 spaces
set smarttab 		"inserts tab on linestart according to shiftwidth
set shiftwidth=4 	"sets visual mode > and < indenting to 4 spaces
set ai 				"sets autoindent on
let mapleader = ","

set ignorecase		"ignore case when searching
set hlsearch		"highlight search results
set autoindent		
set fileencoding=utf-8


set history=1000 	"remember more commands and search history
set undolevels=1000	"allow for undo, on undo, on undo


"for comments
au FileType c,cpp setlocal comments-=:// comments+=f://
"au FileType * setlocal formatoptions-=cro
"*=====================================
"*			Theme Settings	
"*=====================================

colo molokai 		"set molokai background
let g:molokai_original=1 
set background=light
set t_Co=256 		"force vim to use 256 colors, essential for molokai background


"*=====================================
"*			NERDcommentor
"*=====================================


filetype plugin on "need on for Nerdcommentor; fucks with line commenting
filetype indent on
"*=====================================
"*				Vundle	
"*=====================================

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage vundle package
Bundle 'gmarik/vundle' 

" My Bundles here:

Bundle 'scrooloose/nerdtree' 
"improved sexy commenting <leader>ci, <leader>cs, and <leader>cu are friends
Bundle 'scrooloose/nerdcommenter'

"Improved syntax checking for multiple languages
Bundle 'scrooloose/syntastic' 
"Improves vim's JS indendation
Bundle 'pangloss/vim-javascript' 
"Like zen-coding or emmet for vim
Bundle 'mattn/zencoding-vim' 
Bundle 'vim-scripts/c.vim'


"*=====================================
"*			Custom Mappings
"*=====================================
:map ,php :! clear && php %<cr>

:map ,ruby :! clear && ruby %<cr>

:map ,gcc :! clear && gcc % -std=c99 -o %.out && ./%.out<cr> 

:map ,js :! clear && node %<cr>

"toggles Nerdtree with <F2>
:map <F2> <esc>:NERDTreeToggle<cr> 

"*=====================================
"*				Emmet 	
"*=====================================

let g:user_zen_settings = {
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

let g:user_zen_expandabbr_key = ',e'

let g:use_zen_complete_tag = 1

"*=====================================
"*				c.vim	
"*=====================================


"make c.vim use c99 compiler instead of standard gcc
let  g:C_CCompiler = 'c99'

"*=====================================
"*	Randoms (might be useful later)	
"*=====================================

" only show number line for current window
" set number
" au WinEnter * :setlocal number
" au WinLeave * :setlocal nonumber

"Automatically resize vertical splits
" au WinEnter * :set winfixheight
" au WinEnter * :wincmd = 

au FileType * setl fo-=cro "disable god-awful auto-commenting, <stays here!>

