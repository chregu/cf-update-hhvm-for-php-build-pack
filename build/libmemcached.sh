# libmemcached

set -e

wget    --no-check-certificate https://launchpad.net/libmemcached/1.0/1.0.18/+download/libmemcached-1.0.18.tar.gz
tar -xzvf libmemcached-1.0.18.tar.gz
cd libmemcached-1.0.18
sudo apt-get install -y libcloog-ppl0
./configure --prefix=$CMAKE_PREFIX_PATH
make -j
make install
cd ..
rm -rf libmemcached-1.0.18