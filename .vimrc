set nocompatible
filetype off

" Vundle Setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'thoughtbot/vim-rspec'

call vundle#end()
filetype plugin indent on
" End Vundle

"
syntax on
set t_Co=256
colorscheme desert

set modeline
set invnumber
set encoding=utf-8

set nobackup
set nowritebackup
set noswapfile

" Autoindent
set ai

set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

" Save when losing focus
au FocusLost * :silent! wall

filetype plugin indent on " Enable filetype-specific indenting and plugins

set shell=zsh

map <right> :bnext!<cr>
map <left> :bprevious!<cr>
map <C-D> :bd<cr>

set backspace=indent,eol,start

let mapleader=','
let maplocalleader=','

let g:netrw_liststyle= 3

set incsearch                 " incremental search
set ignorecase                " search ignoring case
set smartcase                 " Ignore case when searching lowercase
set hlsearch                  " highlight the search
set showmatch                 " show matching bracket
set diffopt=filler,iwhite     " ignore all whitespace and sync

set expandtab                 " expand tabs to spaces (except java, see autocmd below
set softtabstop=2
set smarttab                  " tab and backspace are smart
set tabstop=4                 " 4 spaces
set shiftwidth=2              " 2 spaces for indentation

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "!bundle exec rspec {spec}"
