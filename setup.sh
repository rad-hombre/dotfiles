#!/bin/usr/env bash
# -------------------
# Shameless adapted copy of @michaeljsmalley's script. 
# Creates directory and dumps old dotfiles into it.
# Next, creates symlinks in $HOME pointing to dotfiles in '~/dotfiles'


dotfiles=~/.dotfiles
olddotfiles=~/.dotfiles_old

files="aliases bashrc vimrc vim ssh tmux.conf inputrc bash_profile
gitconfig"

if [ -d "$olddotfiles" ]; then
    rm -rf $olddotfiles
fi
mkdir -p $olddotfiles

cd $dotfiles

echo ""
echo "Moving current dotfiles from \$HOME to $olddotfiles"

for file in $files; do
	mv ~/.$file ~/.dotfiles_old/
	echo "Creating symlink to $dotfiles/.$file in \$HOME."
	ln -s $dotfiles/.$file ~/.$file
done 

if [ ! -d "$dotfiles/.vim/bundle/vundle" ]; then
  echo ""
  echo "Cloning Vundle,…"
  git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
fi

# Copy over fish 
cp -r $dotfiles/fish $dotfiles/../.config/

echo ""
echo "That'll do, friendo… Enjoy!"
