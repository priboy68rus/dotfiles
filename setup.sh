#!/bin/bash

##############################################################################
# setup.sh 
# Setup all dotfiles from github and move old files to dotfiles_old
##############################################################################
 

dir=~/dotfiles
olddir=~/dotfiles_old
files="zshrc oh-my-zsh vimrc vim tmux.conf bashrc"


# Creating dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "..done"

for file in $files; do
	echo "Moving old dotfile to $olddir"
	mv ~/.$file $olddir
	echo "Creating symlink to $file in home dir"
	ln -s $dir/.$file ~/.$file
done

echo "Add some useful"
