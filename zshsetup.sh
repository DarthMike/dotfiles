#!/bin/sh

echo "...Installing homebrew zsh..."
brew install zsh

echo "...Adding hombrew zsh to /etc/shells "
NEWSHELL="/usr/local/bin/zsh"
SHELLS="/etc/shells"
grep -q -F $NEWSHELL $SHELLS || echo $NEWSHELL >> $SHELLS

echo "...Installing oh-my-zsh..."
curl -L http://install.ohmyz.sh | sh

echo "...Linking oh-my-zsh configs..."
CUSTOM="$HOME/.oh-my-zsh/custom/aliases.zsh"
rm $CUSTOM
ln aliases.zsh $CUSTOM

echo "...Linking zshrc..."
rm $HOME/.zshrc
ln .zshrc $HOME

echo '...Changing shell to ZSH...'
chsh -s /usr/local/bin/zsh
echo 'Change shell by adding to /etc/shells "/usr/local/bin/zsh"'
