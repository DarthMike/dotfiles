#Setup script for atom text editor
git clone https://github.com/atom/atom.git
pushd atom
git reset --hard
git checkout stable
git pull
script/build
popd

