#!/bin/sh

echo "...Installing homebrew zsh..."
brew install zsh

echo "...Adding hombrew zsh to /etc/shells "
NEWSHELL="/usr/local/bin/zsh"
SHELLS="/etc/shells"
grep -q -F $NEWSHELL $SHELLS || echo $NEWSHELL >> $SHELLS

echo "...Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo '...Changing shell to ZSH'
chsh -s /usr/local/bin/zsh
