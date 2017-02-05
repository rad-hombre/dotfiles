#!/bin/usr/env bash
# -------------------
# 	.make.sh
#
# Shameless copy of @michaeljsmalley's script adapted to my own needs.
# Basically, script creates dir and dumps all old dotfiles into it.
# Next, creates symlinks in $HOME to the dotfiles you have in ~/dotfiles
# Run with 'bash make.sh'

dir=~/.dotfiles
olddir=~/.dotfiles_old

files="aliases bashrc vimrc vim ssh tmux.conf inputrc bash_login
gitconfig"

echo "Creating $olddir for backup of any existing dotfiles in \$HOME"
mkdir -p $olddir
echo "... mission accomplished!"
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
echo "---------------------------"
echo "Cloning Vundle, hold on..."
echo "---------------------------"
git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle

# Copy over fish 
cp -r $dir/fish $dir/../.config/

# pull down 
echo ""
echo ""
echo "---------------------------"
echo "Aiight, we good. Enjoy!"
echo "---------------------------"











