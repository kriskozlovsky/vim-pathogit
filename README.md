# Vim-Pathogit
A simple base for setting up [Vim][] plugins with git.

## Installation:

1. Pull from repo to `~/.vim/`:

       git clone git://github.com/kriskozlovsky/vim-pathogit ~/.vim
    
2. Create symlink for `.vimrc`:

       ln -s ~/.vim/vimrc ~/.vimrc
    
3. Switch to `~/.vim` directory, and fetch submodules (at least one: [pathogen.vim][]):

       cd ~/.vim
       git submodule update --init --recursive


## Adding plugins through git: 
To install new plugins you need to add new submodule.
For example to add [vim-fugitive][] do: 

     git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
    
## Credits:
* *based on:*

   <http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/>

[pathogen.vim]: https://github.com/tpope/vim-pathogen   "pathogen.vim by Tim Pope"
[Vim]:          http://www.vim.org                      "Vi Improved"
[vim-fugitive]: https://github.com/tpope/vim-fugitive   "fugitive.vim by Tim Pope"
