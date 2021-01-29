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
echo "XCActionBar: https://github.com/pdcgomes/XCActionBar"
echo "AutoIdentWithSave: https://github.com/ThilinaHewagama/AutoIndentWithSave"
echo "KZLinkedConsole: https://github.com/krzysztofzablocki/KZLinkedConsole"
echo "Refactorator: https://github.com/johnno1962/Refactorator"
echo "KSImageNamed: https://github.com/ksuther/KSImageNamed-Xcode"
echo "Solarized: https://github.com/ArtSabintsev/Solarized-Dark-for-Xcode"
echo "BuildTimeAnalizer: https://github.com/RobertGummesson/BuildTimeAnalyzer-for-Xcode"
echo "************************"

echo '...Symlinking .xvimrc to ~/.xvimrc'
rm $HOME/.xvimrc
ln .xvimrc $HOME/.xvimrc

echo '...Setting up chisel...'
rm $HOME/.lldbinit
ln .lldbinit $HOME/.lldbinit

echo '...Setting up build times visualization...'
echo 'Check here: http://tonyarnold.com/2016/04/20/xcode-build-duration.html'
defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES

