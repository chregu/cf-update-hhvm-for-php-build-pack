# Just a placeholder

# for PHP 5.3/5.4
#FROM phusion/baseimage:0.9.9

FROM ubuntu:10.04

ENV HOME /root

RUN apt-get update && apt-get install -y -f wget python-software-properties \
   && add-apt-repository ppa:ubuntu-toolchain-r/test \
   && apt-get update &&  apt-get upgrade -y -f \
   && apt-get install -y -f gcc-4.8 g++-4.8 gcc-4.8-base  git-core curl \
      libmysqlclient-dev libxml2-dev libmcrypt-dev libicu-dev openssl binutils-dev \
      libcap-dev libgd2-xpm-dev zlib1g-dev libtbb-dev libonig-dev libpcre3-dev autoconf libtool libcurl4-openssl-dev \
      wget libreadline-dev libncurses-dev libicu-dev libbz2-dev libc-client2007e-dev subversion bzip2 \
      gawk memcached libtool libmagickwand-dev libevent-dev libxslt-dev php5-imagick python-dev

RUN    sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 20 \
    && sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 20


RUN mkdir -p /opt/hhvm

ENV CMAKE_PREFIX_PATH /opt/hhvm

#RUN mkdir /root/builds

ADD build/libevent.sh /root/
RUN bash /root/libevent.sh

ADD build/curl.sh /root/
RUN bash /root/curl.sh

ADD build/cmake.sh /root/
RUN bash /root/cmake.sh

ADD build/imagemagick.sh /root/
RUN bash /root/imagemagick.sh

ADD build/libmemcached.sh /root/
RUN bash /root/libmemcached.sh


ADD build/glog.sh /root/
RUN bash /root/glog.sh

ADD build/jemalloc.sh /root/
RUN bash /root/jemalloc.sh

ADD build/libunwind.sh /root/
RUN bash /root/libunwind.sh

ADD build/tbb.sh /root/
RUN bash /root/tbb.sh

ADD build/boost.sh /root/
RUN bash /root/boost.sh

ADD build/libelf.sh /root/
RUN bash /root/libelf.sh

ADD build/ocaml.sh /root/
RUN bash /root/ocaml.sh


RUN git clone git://github.com/chregu/hhvm.git

ADD build/hhvm.sh /root/
RUN bash /root/hhvm.sh







