set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-dispatch'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

colorscheme pablo

set shell=/bin/bash

" tab
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

" backspace
set backspace=indent,eol,start

" complete
set complete-=i

" timeout to wait for mapping
set ttimeout
set ttimeoutlen=100

" line length
set colorcolumn=81
set textwidth=80

" display
set number " show line number
set laststatus=2 " always show status line
set ruler " show cursor position
set scrolloff=1 " always keep one line above and below the cursor
set display+=lastline " show as much as possible of the last line
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

" command
set wildmenu

" join
set formatoptions+=j " Delete comment character when joining commented lines

" auto detect change outside of Vim
set autoread

" search
set ignorecase
set smartcase
set incsearch
set hlsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif

" highlight trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

inoremap <C-U> <C-G>u<C-U>

" set path
set path+=./**
