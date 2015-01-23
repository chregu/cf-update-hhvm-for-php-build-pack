# cmake
set -e

wget http://www.cmake.org/files/v2.8/cmake-2.8.12.1.tar.gz
tar -xzvf cmake-2.8.12.1.tar.gz
cd cmake-2.8.12.1
./configure --prefix=$CMAKE_PREFIX_PATH
make -j
make install
cd ..
rm -rf cmake-2.8.12.1
