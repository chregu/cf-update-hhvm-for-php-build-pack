# tbb

set -e

wget http://ubuntu.wikimedia.org/ubuntu/pool/universe/t/tbb/libtbb2_4.0+r233-1_amd64.deb
wget http://ubuntu.wikimedia.org/ubuntu/pool/universe/t/tbb/libtbb-dev_4.0+r233-1_amd64.deb
sudo dpkg -i libtbb*
