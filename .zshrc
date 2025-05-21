# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Enable completion system
autoload -Uz compinit
compinit

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="jnrowe"
ZSH_THEME="purecustom"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autoupdate git osx colored-man web-search pod pow common-aliases xcode)

source $ZSH/oh-my-zsh.sh

# Source syntax highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  

# User configuration
export GOPATH=$HOME/Desktop/projects/go
export JAVAPATH=$HOME/Desktop/projects/java
export HOMEBREW_PREFIX="/opt/homebrew/bin"

export PATH="$HOMEBREW_PREFIX:/usr/local/bin:$HOME/.local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME:$GOPATH/bin:$JAVAPATH:$JAVAPATH/apache-maven-3.3.9/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_GB.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Git completion configuration
fpath=(/opt/homebrew/share/zsh/site-functions $fpath)
autoload -Uz compinit
compinit

# Disable file completion for git checkout
zstyle ':completion:*:*:git-checkout:*' ignored-patterns '*'

# Source syntax highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  

# Key binding for vim-mode
# https://danielmiessler.com/blog/enhancements-to-shell-and-vim-productivity/
bindkey -v
# Key binding for incremental history (vim mode)
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey ‘^R’ history-incremental-search-backward
# Map alternate 'ESC' to 'jj'
#bindkey -M viins ‘jj’ vi-cmd-mode

# added by travis gem
[ -f /Users/miqu/.travis/travis.sh ] && source /Users/miqu/.travis/travis.sh
export PATH=$PATH:$HOME/.maestro/bin

