#My aliases
alias edit='atom'
alias zshrc='edit ~/.zshrc'
alias ohmy='edit ~/.oh-my-zsh'

alias pu='pod update'

alias fuck='sudo $(fc -ln -1)'

alias git=hub

alias rake="noglob rake"

alias quarter="git log --since '4 months ago' --author 'Miguel Angel Quinones'"

alias objcdep="python objc_dep.py . > objcdep.dot"

#git
alias gpl='git pull'
alias gp='git push'

#xcode
alias injection='env NOTIFY=terminal-notifier kicker -r code_injection'

#pods
alias pu='pod update'
alias pi='pod install'

#Common dirs
projects=$HOME/Desktop/projects/
blog=$HOME/Sites/blog
peak=$HOME/Desktop/projects/peak/sharper
boardgamer=$HOME/Desktop/projects/boardgamer
dotfiles=$HOME/dotfiles.git

#PEAK
alias pull-requests="open https://github.com/brainbow/sharper/pull"
