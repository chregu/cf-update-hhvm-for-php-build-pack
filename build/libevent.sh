# libevent
set -e

curl -OL https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar -xzvf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure --prefix=$CMAKE_PREFIX_PATH
make -j
make install
cd ..
rm -rf libevent-2.0.21-stable