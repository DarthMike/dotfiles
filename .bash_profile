export HISTIGNORE="ls:pwd"

alias edit='subl'
alias ls='ls -a'
alias fuck='sudo !!'

. $HOME/env/fancyprompt.sh

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
