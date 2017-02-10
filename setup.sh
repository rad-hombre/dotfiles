#!/bin/usr/env bash
# -------------------
# Shameless adapted copy of @michaeljsmalley's script. 
# Creates directory and dumps old dotfiles into it.
# Next, creates symlinks in $HOME pointing to dotfiles in '~/dotfiles'

dir=~/.dotfiles
olddir=~/.dotfiles_old

files="aliases bashrc vimrc vim ssh tmux.conf inputrc bash_profile
gitconfig"

echo "Creating $olddir for backup of any existing dotfiles in \$HOME"
mkdir -p $olddir
echo "… mission accomplished!"
echo ""

cd $dir
for file in $files; do
	echo "Moving current dotfiles from \$HOME to $olddir"
	mv ~/.$file ~/.dotfiles_old/
	echo ""
	echo "Creating symlink to dotfiles/$file in \$HOME."
	ln -s $dir/.$file ~/.$file
done 

echo ""
echo "Cloning Vundle,…"
git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle

# Copy over fish 
cp -r $dir/fish $dir/../.config/

echo ""
echo "That'll do, friendo… Enjoy!"
