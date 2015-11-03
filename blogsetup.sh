#Clone blog
git clone https://github.com/DarthMike/darthmike.github.io ~/Sites/blog

#Install pow
curl get.pow.cx | sh

pushd ~/.pow
ln -s blog ~/Sites/blog
popd

