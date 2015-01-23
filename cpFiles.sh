ROOT=/opt/docker-git
rm -rf $ROOT/hhvm_files/*
mkdir -p $ROOT/hhvm_files/usr/lib/hhvm
mkdir -p $ROOT/hhvm_files/usr/bin/
docker run --rm -v $ROOT/hhvm_files:/root/hhvm_files/ chregu/hhvm-for-cf bash -c "
cp /usr/local/bin/hhvm /root/hhvm_files/usr/bin
cp /usr/lib/libMagickWand.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libMagickCore.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libc-client.so.2007e /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libjpeg.so.62 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libmysqlclient_r.so.16 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libicudata.so.48 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libicui18n.so.48 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libicuuc.so.48 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libtbb.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libxml2.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libxslt.so.1 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libexslt.so.0 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libonig.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libmcrypt.so.4 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libboost_regex.so.1.55.0 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libfreetype.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libcurl.so.4 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libjemalloc.so.1 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libboost_program_options.so.1.55.0 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libboost_filesystem.so.1.55.0 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libboost_thread.so.1.55.0 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libboost_system.so.1.55.0 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libevent-2.0.so.5 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libglog.so.0 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/liblcms.so.1 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libtiff.so.4 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libXext.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libXt.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libltdl.so.7 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libSM.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libICE.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libX11.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libgomp.so.1 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libgssapi_krb5.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libkrb5.so.3 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libk5crypto.so.3 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libkrb5support.so.0 /root/hhvm_files/usr/lib/hhvm/
cp /lib/libkeyutils.so.1 /root/hhvm_files/usr/lib/hhvm/
cp /lib/libgpg-error.so.0 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libtasn1.so.3 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libXau.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libXdmcp.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libstdc++.so.6 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libidn.so.11 /root/hhvm_files/usr/lib/hhvm/
cp /lib/libgcrypt.so.11 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libsasl2.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libgnutls.so.26 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libxcb.so.1 /root/hhvm_files/usr/lib/hhvm/
cp /lib/libexpat.so.1 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libldap_r-2.4.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/liblber-2.4.so.2 /root/hhvm_files/usr/lib/hhvm/
cp /opt/hhvm/lib/libmemcached.so.11 /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libelf-0.152.so /root/hhvm_files/usr/lib/hhvm/
cp /usr/lib/libelf.so.1 /root/hhvm_files/usr/lib/hhvm/"


docker run --rm -v $ROOT/hhvm_files:/root/hhvm -e LD_LIBRARY_PATH=/root/hhvm/usr/lib/hhvm ubuntu:10.04 /root/hhvm/usr/bin/hhvm --version

mkdir hhvm
HHVM_VERSION=3.5.0
cp -r $ROOT/hhvm_files/* hhvm/
tar -czf hhvm-$HHVM_VERSION.tar.gz hhvm/
shasum "hhvm-$HHVM_VERSION.tar.gz" > "hhvm-$HHVM_VERSION.tar.gz.sha1"
rm -rf hhvm
