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
echo "************************"

echo '...Symlinking .xvimrc to ~/.xvimrc'
rm $HOME/.xvimrc
ln .xvimrc $HOME/.xvimrc

echo '...Setting up objc_dep...'
rm -rf objc_dep
git clone https://github.com/nst/objc_dep
cp objc_dep/objc_dep.py $HOME

echo '...Setting up chisel...'
rm $HOME/.lldbinit
ln .lldbinit $HOME/.lldbinit

echo '...Setting up dyci...'
rm -rf dyci-main
git clone https://github.com/DyCI/dyci-main
pushd dyci-main
#./Install/install.sh -s
popd

rm -rf $HOME/.kick
mkdir $HOME/.kick
ln .kick/code_injection.rb $HOME/.kick/code_injection.rb

echo '...Installing templates...'
echo '...Kiwi...'
rm -rf $HOME/Kiwi
git clone https://github.com/kiwi-bdd/Kiwi
./Kiwi/Xcode\ Templates/install-templates.sh
rm -rf $HOME/Kiwi
