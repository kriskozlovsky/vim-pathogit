"General Settings
set nocp		"no Vi compatibility
" set tabstop=4
" set shiftwidth=4

"PATHOGEN SETUP
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin on 
filetype plugin indent on
syntax on

set t_Co=256
set background=dark
colorscheme solarized


"Python-mode
"let g:pymode_python = 'python3'
let g:pymode_rope = 0
let g:pymode_run_bind = '<leader>R'
let g:pymode_doc = 0

"Jedi-vim

"Airline
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
set laststatus=2	"show airline for single window

"Temporary Files Directory 
set dir=~/.vim/tmpfiles/swap/
set udir=~/.vim/tmpfiles/undo/
set backupdir=~/.vim/tmpfiles/backup/

autocmd! bufwritepost .vimrc source % "Automatic reloading of .vimrc
set mouse=a		"mouse on for all modes
set backspace=2		"make backspace normal
set number		"show numbered lines

"set fileformats=unix

"NeoVim specific
if !has('nvim')
	set ttymouse=xterm2
endif
