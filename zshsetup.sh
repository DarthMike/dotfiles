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
CUSTOM_ALIASES="$HOME/.oh-my-zsh/custom/aliases.zsh"
rm $CUSTOM_ALIASES
ln .oh-my-zsh/custom/aliases.zsh $CUSTOM_ALIASES
CUSTOM_THEME="$HOME/.oh-my-zsh/custom/themes"
rm -rf $CUSTOM_THEME
mkdir $CUSTOM_THEME
CUSTOM_THEME_PATH="$CUSTOM_THEME/miqu.zsh-theme"
ln .oh-my-zsh/custom/themes/miqu.zsh-theme "$CUSTOM_THEME_PATH"

echo '...Changing shell to ZSH...'
chsh -s $NEWSHELL
echo 'Change shell by adding to /etc/shells "/usr/local/bin/zsh"'
