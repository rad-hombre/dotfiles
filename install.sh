#!/bin/bash
# -------------------

dotfiles=~/.dotfiles
olddotfiles=~/.dotfiles_old

files="aliases bashrc bash_profile gitconfig inputrc ssh 
tmux.conf vimrc vim zshrc zshenv"

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

echo "Done."
