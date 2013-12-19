#!/bin/sh

#On some distros with graphical logins (Ubuntu) .xprofile is read but NOT .xinitrc  
#In that case, create a symlink named .xprofile in $HOME to this file. Problem solved. 


#Read X configuruation files 
xrdb -load ~/.Xresources 

# sets backgr
eval `cat ~/.fehbg`
ssh-agent xmonad 

