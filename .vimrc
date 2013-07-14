set number
syntax on
set incsearch
set showmatch
set noswapfile
set tabstop=4 " set tabs to 4 spaces
set shiftwidth=4 " sets visual mode > and < indenting to 4 spaces
set ai " sets autoindent on
        

" Set monokai background match original
colo molokai
let g:molokai_original=1
set background=light
"set background=dark

" Forces vim to use 256 colors, essential for molokai background
set t_Co=256


" enabling places a cursorline that follows you around
" set cursorline


" for Vundle
set nocompatible " be iMproved
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
"
"
"
Bundle 'scrooloose/nerdtree' 
"Improved syntax checking for multiple languages
Bundle 'scrooloose/syntastic' 
"Improves vim's JS indendation
Bundle 'pangloss/vim-javascript' 
"Like zen-coding or emmet for vim
Bundle 'mattn/zencoding-vim' 
Bundle 'vim-scripts/c.vim'
filetype plugin indent on

set ignorecase
set hlsearch
set autoindent
set fileencoding=utf-8

" My custom mappings
:map ,php :! clear && php %<cr>

:map ,ruby :! clear && ruby %<cr>

:map ,gcc :! clear && gcc % -std=c99 -o %.out && ./%.out<cr> 

:map ,js :! clear && node %<cr>
" Configuration to customize Emmet auto-completion

" let g:user_expandabbr_key = '<,-e>'
" let g:use_zen_complete_tag = 1

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

" Has c.vim use c99 compiler instead of standard gcc
let  g:C_CCompiler = 'c99'

" only show number line for current window

" set number
" au WinEnter * :setlocal number
" au WinLeave * :setlocal nonumber

"Automatically resize vertical splits
" au WinEnter * :set winfixheight
" au WinEnter * :wincmd = 


map <F2> <esc>:NERDTreeToggle<cr>
