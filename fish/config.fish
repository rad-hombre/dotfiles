# Set the fish PATH 
set PATH $PATH

# Set globals 
set -g -x VISUAL vim
set -g -x EDITOR vim
set -g -x PAGER less 

# Aliases 
function ef; vim ~/.config/fish/config.fish; end
function l; ls -EFl; end
function la; ls -Gla; end

# Traversal 
function ..; cd ..; end
function ...; cd ../..; end
function ....; cd ../../..; end
function -; cd -; end

