# libelf
set -e

wget http://launchpadlibrarian.net/71053826/libelf1_0.152-1ubuntu1_amd64.deb
wget http://launchpadlibrarian.net/76118581/libdwarf-dev_20110612-2_amd64.deb
wget http://launchpadlibrarian.net/71053827/libelf-dev_0.152-1ubuntu1_amd64.deb
sudo dpkg -i libelf-dev_0.152-1ubuntu1_amd64.deb libdwarf-dev_20110612-2_amd64.deb libelf1_0.152-1ubuntu1_amd64.deb
rm -rf *.deb
