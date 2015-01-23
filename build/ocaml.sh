# ocaml
set -e

wget http://caml.inria.fr/pub/distrib/ocaml-4.01/ocaml-4.01.0.tar.gz
tar -xzpvf ocaml-4.01.0.tar.gz
cd ocaml-4.01.0/
./configure --prefix $CMAKE_PREFIX_PATH
make world.opt
make install
cd ..
rm -rf ocaml-4.01.0/
