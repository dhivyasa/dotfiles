#!/bin/bash

exec > >(tee -i $HOME/dotfiles_install.log)
exec 2>&1
set -x

ln -s $(pwd)/tmux.conf $HOME/.tmux.conf
ln -s $(pwd)/vimrc $HOME/.vimrc
ln -s $(pwd)/vim $HOME/.vim
ln -s $(pwd)/emacs $HOME/.emacs
ln -s $(pwd)/screenrc $HOME/.screenrc
ln -s $(pwd)/aliases.sh $HOME/.bash_aliases
mkdir -p $HOME/.dotfiles/lib/aliases/git
ln -s $(pwd)/lib/aliases/git/git.aliases.sh $HOME/.dotfiles/lib/aliases/git/git.aliases.sh



vim -Es -u $HOME/.vimrc -c "PlugInstall | qa"
