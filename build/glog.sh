# glog
set -e

wget https://google-glog.googlecode.com/files/glog-0.3.3.tar.gz
tar -xzvf glog-0.3.3.tar.gz
cd glog-0.3.3
./configure --prefix=$CMAKE_PREFIX_PATH
make -j
make install
cd ..
rm -rf glog-0.3.3
