#hhvm
set -e

#git clone git://github.com/facebook/hhvm.git

cd hhvm
export PATH=$PATH:$CMAKE_PREFIX_PATH/bin
git checkout -b HHVM-3.5 origin/newrelic-profiling-3.5
git submodule update --init --recursive
cmake .
make install
cd ..
rm -rf
rm -rf hhvm

