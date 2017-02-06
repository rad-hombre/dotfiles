if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# For use with Node Version Manager (NVM)
export NVM_DIR="/Users/dev/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
