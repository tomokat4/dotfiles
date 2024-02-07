Both the vim and nvim config files require Vundle package manager to run properly.

Clone the config repo to your home catalogue, and cp the appropriate configfile to your .vim or .nvim directory.
If your local user does not have a user specific dotfile for vim or nvim, make one.

Run the following command to setup the vundle package manager.

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Start vim/nvim and run :PluginInstall to set up.

If your vim/nvim doesnt find the config file, you need to check where your vim/nvim looks for scripts.
:Version or :Script in the vim command mode will provide useful information on where your installation looks for files.
Usually you want the vimrc/nvimrc placed inside the 2nd user vimrc file location.

For UNIX/MacOS nvim you might need to place your .nvimrc in the home directory and echo it to $VIM/Sysinit.vim

