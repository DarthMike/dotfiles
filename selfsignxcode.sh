#/bin/sh
#https://github.com/XVimProject/XVim2/blob/master/SIGNING_Xcode.md

echo 'Self-signing xCode'
sudo codesign -f -s XcodeSigner /Applications/Xcode.app
