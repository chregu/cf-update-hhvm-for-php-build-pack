# boost
set -e
wget http://ubuntu.wikimedia.org/ubuntu/pool/main/i/icu/libicu48_4.8.1.1-3_amd64.deb
wget http://ubuntu.wikimedia.org/ubuntu/pool/main/i/icu/libicu-dev_4.8.1.1-3_amd64.deb
sudo dpkg -i libicu*
wget http://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.bz2/download -O boost_1_55_0.tar.bz2
tar xvf boost_1_55_0.tar.bz2
cd boost_1_55_0
./bootstrap.sh
./b2 install --prefix=$CMAKE_PREFIX_PATH
cd ..
rm -rf boost_1_55_0

