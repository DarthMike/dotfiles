#Setup script for atom text editor
ATOM_ZIP="atom.zip"
ATOM_FOLDER="atom"
sudo rm $ATOM_ZIP
sudo rm $ATOM_FOLDER

curl https://atom.io/download/mac > $ATOM_ZIP
unzip $ATOM_ZIP $ATOM_FOLDER
sudo mv -r "$ATOM_ZIP/Atom.app" /Applications/

#git clone https://github.com/atom/atom.git
# pushd atom
# git reset --hard
# git checkout stable
# git pull
# npm install
# npm rebuild
# script/build
# popd
#
