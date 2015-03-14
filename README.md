#Vim-Pathogit
A simple base for setting up [Vim][] plugins with git.

##Installation:

1. Pull from repo to `~/.vim/`:

        git clone git://github.com/kriskozlovsky/vim-pathogit ~/.vim
    
2. Create symlink for `.vimrc`:

        ln -s ~/.vim/vimrc ~/.vimrc
    
3. Switch to `~/.vim` directory, and fetch submodules (at least one: [pathogen.vim][]):

        cd ~/.vim
	git submodule update --init --recursive

##Random Installation Notes:

1. For use of Solarized with Xtermianal you might need to use [.Xresources][]
or if you are so unfortunate to use gnome-terminal [this][solarized-gnome] might be of use to you. It's ugly but it works

##Adding plugins through git: 
To install new plugins you need to add new submodule.
For example to add [vim-fugitive][] do: 

    git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
    
##Credits:
* *based on:*

    http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/

[pathogen.vim]: https://github.com/tpope/vim-pathogen   "pathogen.vim by Tim Pope"
[Vim]:          http://www.vim.org                      "Vi Improved"
[vim-fugitive]: https://github.com/tpope/vim-fugitive   "fugitive.vim by Tim Pope"
[.Xresources]: https://github.com/solarized/xresources  "Solarized: .Xresources"
[solarized-gnome]: https://github.com/sigurdga/gnome-terminal-colors-solarized.git "Solarized theme for gnome-terminal"
