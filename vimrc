" General Settings
"

let g:VIMHOME = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if has('nvim')
	let g:python_host_prog = g:VIMHOME.'/.envs/nvim_p2/bin/python'
	let g:python3_host_prog = g:VIMHOME.'/.envs/nvim/bin/python'
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


"Airline
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
set laststatus=2	"show airline for single window

let g:airline#extensions#syntastic#enabled = 1 

"Deoplete
let g:deoplete#enable_at_startup = 1

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"!REQUIRES pylama and mypy to work!
let g:syntastic_python_checkers = ["python", "pylama", "mypy"]

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
nnoremap <leader>ce :setlocal spell spelllang=en<cr>
nnoremap <leader>cn :setlocal nospell<cr>

" Show Invisibles
nnoremap <leader>l :set list!<cr>
set listchars=tab:▸\ ,eol:¬,trail:•,nbsp:·

" Autocommands
au FileType gitcommit setlocal spell spelllang=en



"set fileformats=unix
