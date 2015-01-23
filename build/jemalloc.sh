# jemaloc
set -e

wget http://www.canonware.com/download/jemalloc/jemalloc-3.6.0.tar.bz2
tar xjvf jemalloc-3.6.0.tar.bz2
cd jemalloc-3.6.0
./configure --prefix=$CMAKE_PREFIX_PATH
make -j
make install
cd ..
rm -rf jemalloc-3.6.0
