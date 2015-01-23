# imagemagick
set -e

wget http://mirror.checkdomain.de/imagemagick/ImageMagick-6.9.0-4.tar.bz2
tar xvf ImageMagick-6.9.0-4.tar.bz2
cd ImageMagick-6.9.0-4
./configure --prefix=$CMAKE_PREFIX_PATH
make
make install
cd ..
rm -rf ImageMagick-6.9.0-4
