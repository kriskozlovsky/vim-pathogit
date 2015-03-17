set nocp		"no Vi compatibility

"PATHOGEN SETUP
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin on 
filetype plugin indent on
syntax on

set t_Co=16
let g:solarized_termcolors=16
set background=dark
colorscheme solarized

"Python-mode
"let g:pymode_python = 'python3'

"Airline
let g:airline_powerline_fonts=1

"Temporary Files Directory 
set dir=~/.vim/tmpfiles/swap/
set udir=~/.vim/tmpfiles/undo/
set backupdir=~/.vim/tmpfiles/backup/

autocmd! bufwritepost .vimrc source % "Automatic reloading of .vimrc
set mouse=a		"mouse on for all modes
set backspace=2		"make backspace normal
set number		"show numbered lines
