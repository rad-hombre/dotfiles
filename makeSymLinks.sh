
#!/bin/bash
# -------------------
# 	.make.sh
#
# Shameless copy of @michaeljsmalley's script adapted to my own needs.
# Basically, script creates dir and dumps all old dotfiles into it.
# Next, creates symlinks in $HOME to the dotfiles you have in ~/dotfiles
# Run with 'bash make.sh'



# There's a problem with symlinking to .vim, and .oh-my-zsh, you have to create those manually, 
# not sure why yet.

# -------------------

# -------------------
# 	Variables
# -------------------



dir=~/dotfiles
olddir=~/dotfiles_old

# list of files we're dealing with 
files="aliases bashrc vimrc vim zshrc oh-my-zsh screenrc tmux.conf Xresources inputrc bash_login"




# create new dir for old dotfiles and dump 'em in. Backing stuff up

echo "Creating $olddir for backup of any existing dotfiles in \$HOME"
mkdir -p $olddir
echo "... mission accomplished!"

echo ""

# change to the dotfiles dir
cd $dir


for file in $files; do
	echo "Moving current dotfiles from \$HOME to $olddir"
	mv ~/.$file ~/dotfiles_old/

	echo ""

	echo "Creating symlink to dotfiles/$file in \$HOME."
	ln -s $dir/.$file ~/.$file

done 

echo ""
echo ""
echo "---------------------------"
echo "Cloning Vundle, hold on playa....."
echo "---------------------------"
git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle




# pull down 



echo ""
echo ""
echo "---------------------------"
echo "Alright man, we good, enjoy!"
echo "---------------------------"








