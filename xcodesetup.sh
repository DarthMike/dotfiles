echo "....Installing Alcatraz....."
rm -rf ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin
rm -rf ~/Library/Application\ Support/Alcatraz
curl https://raw.githubusercontent.com/supermarin/Alcatraz/deploy/Scripts/install.sh | sh

echo "Plugin reminders:"
echo "************************"
echo "XVim: https://github.com/XVimProject/XVim"
echo "ShowInGithub: https://github.com/larsxschneider/ShowInGitHub"
echo "BBDebuggerTuckAway: https://github.com/neonichu/BBUDebuggerTuckAway"
echo "SCXcodeSwifthExpnader: https://github.com/stefanceriu/SCXcodeSwitchExpander"
echo "VVDocumenter-Xcode: https://github.com/onevcat/VVDocumenter-Xcode"
echo "Clanformat-Xcode: https://github.com/travisjeffery/ClangFormat-Xcode"
echo "Lin: https://github.com/questbeat/Lin-Xcode5"
echo "************************"

echo '...Symlinking .xvimrc to ~/.xvimrc'
rm $HOME/.xvimrc
ln .xvimrc $HOME/.xvimrc

echo '...Setting up mergepbx...'
git clone https://github.com/simonwagner/mergepbx
pushd mergepbx
./build.py
popd
