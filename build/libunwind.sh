# libunwind
set -e

wget http://download.savannah.gnu.org/releases/libunwind/libunwind-1.1.tar.gz
tar -xzvf libunwind-1.1.tar.gz
cd libunwind-1.1
./configure --prefix=$CMAKE_PREFIX_PATH
make -j
make install
cd ..
rm -rf libunwind-1.1
