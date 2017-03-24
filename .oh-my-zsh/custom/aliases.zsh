#My aliases
alias edit='atom'
alias zshrc='edit ~/.zshrc'
alias ohmy='edit ~/.oh-my-zsh'

alias fuck='sudo $(fc -ln -1)'

alias git=hub

alias rake="noglob rake"

alias quarter="git log --since '4 months ago' --author 'Miguel Angel Quinones'"

alias objcdep="python objc_dep.py . > objcdep.dot"

#system
alias lock='mac lock'

#git
alias gpl='git pull'
alias gplr='git pull --rebase=true'
alias gp='git push'
alias gs='git stash'
alias gsp='git stash pop'
alias gdc='git diff --cached'

#ios
alias injection='env NOTIFY=terminal-notifier kicker -r code_injection'
alias pu='osascript -e '"'"'quit app "Xcode"'"'"' && bundle exec pod update && open -a Xcode'
alias pi='osascript -e '"'"'quit app "Xcode"'"'"' && bundle exec pod install && open -a Xcode'

#Common dirs
alias peak='cd $HOME/Desktop/projects/'
alias blog='cd $HOME/Sites/blog'
alias peak='cd $HOME/Desktop/projects/peak/sharper'
alias boardgamer='cd $HOME/Desktop/projects/personal/boardgamer-app'
alias dotfiles='cd $HOME/dotfiles.git'
alias swiftdir='cd $HOME/Desktop/projects/apple/swift'

#PEAK
alias prs="open https://github.com/brainbow/peak-brain-training/pulls"

function brew.info {
  grep desc $(brew --prefix)/Library/Formula/*.rb | perl -ne 'm{^.*/(.*?)\.rb.*?\"(.*)"$} and print "$1|$2\n"' | column -t -s '|' | fzf --reverse
}
