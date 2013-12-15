#Matthew's dotfiles




All my dotfiles. Boom.

###Setup
After pulling down repository into your home directory ($HOME), run
```
sh makeSymLinks.sh
```
from within dotfiles directory. 
This script automatically creates system links from the repository 
directory into $HOME, copying and preserving old dotfiles into $HOME/dotfiles_old

###Vim
My vim setup works with [vundle](https://github.com/gmarik/vundle) for plugin 
management. 

makeSymLinks.sh pulls down Vundle automatically. 
The first time you run vim enter

```
:BundleInstall
```

to tell Vundle to pull down the relevenat packages indicated 
in the vimrc file. 


###Zsh
##(Optional)
Everything works out of the box with bash, but if you fancy a go at zsh, then go for it! 
After installing zsh, clone [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) into your home directory. 
```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-myzsh
```

Once this is done, you'll need to copy a theme file from ~/dotfiles/.oh-my-zsh/themes into 
the recently created file in ~/.oh-my-zsh

 



##Enjoy!
