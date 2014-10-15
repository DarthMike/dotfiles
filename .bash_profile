source ~/.profile

alias edit='subl'

. ~/gitprompt.sh
#. ~/symbolicateioscrash_alias.sh

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
