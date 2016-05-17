#My aliases
alias edit='atom'
alias zshrc='edit ~/.zshrc'
alias ohmy='edit ~/.oh-my-zsh'

alias fuck='sudo $(fc -ln -1)'

alias git=hub

alias rake="noglob rake"

alias quarter="git log --since '4 months ago' --author 'Miguel Angel Quinones'"

alias objcdep="python objc_dep.py . > objcdep.dot"

#git
alias gpl='git pull'
alias gplr='git pull --rebase=true'
alias gp='git push'
alias gs='git stash'
alias gsp='git stash pop'
alias gdc='git diff --cached'

#ios
alias injection='env NOTIFY=terminal-notifier kicker -r code_injection'
alias pu='bundle exec pod update'
alias pi='bundle exec pod install'

#Common dirs
projects=$HOME/Desktop/projects/
blog=$HOME/Sites/blog
peak=$HOME/Desktop/projects/peak/sharper
boardgamer=$HOME/Desktop/projects/personal/boardgamer-app
dotfiles=$HOME/dotfiles.git
swiftdir=$HOME/Desktop/projects/apple/swift

#PEAK
alias prs="open https://github.com/brainbow/sharper/pulls"

function brew.info {
  grep desc $(brew --prefix)/Library/Formula/*.rb | perl -ne 'm{^.*/(.*?)\.rb.*?\"(.*)"$} and print "$1|$2\n"' | column -t -s '|' | fzf --reverse
}
