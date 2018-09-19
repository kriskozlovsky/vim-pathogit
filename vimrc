" General Settings
"

let g:VIMHOME = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if has('nvim')
	let g:python_host_prog = g:VIMHOME.'/envs/nvim_p2/bin/python'
	let g:python3_host_prog = g:VIMHOME.'/envs/nvim/bin/python'
else
	set nocp		"no Vi compatibility
	set ttymouse=xterm2
endif

"PATHOGEN SETUP
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

set t_Co=256
set background=dark
colorscheme solarized

set colorcolumn=81


"Python-mode
let g:pymode_python = 'python3'
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
let g:pymode_rope = 0
let g:pymode_doc = 0

"Jedi-vim

"Airline
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
set laststatus=2	"show airline for single window

"Temporary Files Directory 
let &dir=g:VIMHOME."/tmpfiles/swap/"
let &udir=g:VIMHOME."/tmpfiles/undo/"
let &backupdir=g:VIMHOME."/tmpfiles/backup/"

autocmd! bufwritepost .vimrc source % "Automatic reloading of .vimrc
set mouse=a		"mouse on for all modes
set backspace=2		"make backspace normal
set number		"show numbered lines

" Mapping
nnoremap <leader>cp :setlocal spell spelllang=pl<cr>

"set fileformats=unix
