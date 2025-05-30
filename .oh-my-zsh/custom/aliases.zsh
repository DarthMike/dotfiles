#My aliases
alias edit='code'
alias zshrc='edit ~/.zshrc'
alias ohmy='edit ~/.oh-my-zsh'

alias fuck='sudo $(fc -ln -1)'

alias git=hub

alias rake="noglob rake"

alias quarter="git log --since '4 months ago' --author 'Miguel Angel Quinones'"

alias objcdep="python objc_dep.py . > objcdep.dot"

alias did="vim +'normal Go' +'r!date' ~/did.txt"

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
alias pu='osascript -e '"'"'quit app "Xcode"'"'"' && bundle exec pod update && open -a Xcode'
alias pi='osascript -e '"'"'quit app "Xcode"'"'"' && bundle exec pod install && open -a Xcode'
alias xcd='/Applications/Xcode.app/Contents/MacOS/Xcode -ShowDVTDebugMenu YES'

#Common dirs
alias blog='cd $HOME/Sites/blog'
alias personal='cd $HOME/Desktop/projects/personal'
alias dotfiles='cd $HOME/dotfiles.git'
alias swiftdir='cd $HOME/Desktop/projects/apple-swift'
alias argent='cd $HOME/Desktop/projects/argent'
alias vault='cd $HOME/Desktop/projects/argent/vault-legacy-ios'

#Argent
alias prs="open https://github.com/argentlabs/ios/pulls"
alias lprs="open https://github.com/argentlabs/vault-legacy-ios/pulls"

function brew.info {
  grep desc $(brew --prefix)/Library/Formula/*.rb | perl -ne 'm{^.*/(.*?)\.rb.*?\"(.*)"$} and print "$1|$2\n"' | column -t -s '|' | fzf --reverse
}
