#!/bin/sh

echo "...Installing homebrew zsh..."
brew install zsh

echo "...Adding hombrew zsh to /etc/shells "
NEWSHELL="/usr/local/bin/zsh"
SHELLS="/etc/shells"
grep -q -F $NEWSHELL $SHELLS || echo $NEWSHELL >> $SHELLS

echo "...Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo "...Copying oh-my-zsh configs..."
CUSTOM="$HOME/.oh-my-zsh/custom/aliases.zsh"
rm $CUSTOM
cp aliases.zsh $CUSTOM

echo "...Copying zshrc..."
rm $HOME/.zshrc
cp .zshrc $HOME

echo '...Changing shell to ZSH...'
chsh -s /usr/local/bin/zsh
