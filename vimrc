set nocp
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on

filetype plugin on 
filetype plugin indent on

set t_Co=256
set background=dark

autocmd! bufwritepost .vimrc source % "Automatic reloading of .vimrc
set mouse=a "mouse on for all modes
set backspace=2 "make backspace normal
set number "show numbered lines
