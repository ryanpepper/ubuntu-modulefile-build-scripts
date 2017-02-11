#!/bin/bash

rm -rf sundials-2.6.2 sundials-2.6.2-src
if [ ! -f "sundials-2.6.2.tar.gz" ]; then wget http://computation.llnl.gov/projects/sundials/download/sundials-2.6.2.tar.gz;fi
tar -xvf sundials-2.6.2.tar.gz
mv sundials-2.6.2 sundials-2.6.2-src
sudo mkdir -p sundials-2.6.2
cd sundials-2.6.2-src
mkdir -p build
cd build
sudo cmake -DBUILD_STATIC_LIBS=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/packages/sundials-2.6.2/bin -DEXAMPLES_ENABLE=ON -DEXAMPLES_INSTALL_PATH=/opt/packages/sundials-2.6.2/examples -DLAPACK_ENABLE=ON -DOPENMP_ENABLE=ON -DMPI_ENABLE=ON ..

make
make install
cd ../..
rm -rf sundials-2.6.2-src
