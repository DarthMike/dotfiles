echo '...Symlinking .xvimrc to ~/.xvimrc'
rm $HOME/.xvimrc
ln .xvimrc $HOME/.xvimrc

echo '...Setting up chisel...'
rm $HOME/.lldbinit
ln .lldbinit $HOME/.lldbinit

echo '...Setting up build times visualization...'
echo 'Check here: http://tonyarnold.com/2016/04/20/xcode-build-duration.html'
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES

