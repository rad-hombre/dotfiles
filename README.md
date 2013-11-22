#Matthew's dotfiles




All my dotfiles. Boom.

###Setup
After pulling it down, run 
```
sh makeSymLinks.sh
```
from within dotfiles directory. 
That will setup sym links from ~/dotfiles into ~/
and shove old dotfiels into ~/dotfiles_old

Vundle will also be installed automatically. 


###Vim
My vim setup works with [vundle](https://github.com/gmarik/vundle) for plugin 
management. 

makeSymLinks.sh installs it automatically, so the first time you run vim enter

```
:BundleInstall
```

to pull down vim plugins 


###Zsh

If you're not on a school unix machine that fights zsh with every fiber of its being, then you should install it! 
After installing zsh, clone [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) into your home directory. 
```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-myzsh
```

After doing this, you'll probably need to copy a theme file from ~/dotfiles/.oh-my-zsh/themes into 
the recently created file in ~/.oh-my-zsh

It's on my to-do list to automate. 



##Enjoy!
