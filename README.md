#Matthew's dotfiles




All my dotfiles. Boom.

##Setup
After pulling down repository into your home directory ($HOME), run the installation script from within
the repo directory. 
```
sh setup.sh
```
This script automatically creates system links from the repo
directory into $HOME, copying and preserving old dotfiles into $HOME/dotfiles_old

##Vim Setup
My vim setup works with [vundle](https://github.com/gmarik/vundle) for plugin management. 

setup.sh pulls down Vundle automatically. 

The first time you run vim, you can tell it to automatically start pulling down relevant packages, indicated
in the vimrc, with the following. 

```
:BundleInstall
```

And you're good! 


##Zsh
###(Optional)
Everything works out of the box with bash, but if you fancy a go at zsh, then go for it! 
After installing zsh, clone [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) into your home directory. 
```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-myzsh
```

Once this is done, you'll need to copy a theme file from ~/dotfiles/.oh-my-zsh/themes into 
the recently created file in ~/.oh-my-zsh

 



##Enjoy!
