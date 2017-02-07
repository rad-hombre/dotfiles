# NOTE: Currently, fish is taking advantage of all Bash's env vars.
# If you ever move to using fish w/o starting Bash
# first, all custom env variable definitions must be moved here

# Only differences are the declarations: 
# export GREP_OPTIONS='--color=auto'
# becomes
# set -x GREP_OPTIONS '--color=auto'


# ------ Aliases ----------
function ef; vim ~/.config/fish/config.fish; end
function la; ls -Gla; end
function l; pwd; and ls -FGl; end
function ...; cd ../..; end
function u; cd ..; and l; end
function tree; "tree -C"; end
