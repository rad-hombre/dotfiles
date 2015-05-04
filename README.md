#Matthew's dotfiles
All my dotfiles. Boom.

##Setup
Clone repo in your homedir. 
```
git clone http://github.com/mattattaque/dotfiles ~/.dotfiles
```
Run the installation script from within the repo directory. 
```
sh setup.sh
```
Script creates symlinks from dotfiles in repo directory into $HOME, 
preserving old dotfiles into $HOME/dotfiles_old

##Vim Setup
My Vim setup uses [vundle](https://github.com/gmarik/vundle) for plugin management. 
The setup.sh script pulls down Vundle automatically. 

The first time vim is run after running the script, tell vundle to pull down vim plugins, indicated
in the .vimrc, by running the following from within vim.

```
:BundleInstall
```

Boom. Done.
