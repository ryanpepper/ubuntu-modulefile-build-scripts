wget http://computation.llnl.gov/projects/sundials/download/sundials-2.7.0.tar.gz
tar -xvf sundials-2.7.0.tar.gz
sudo cmake -DBUILD_STATIC_LIBS=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/packages/sundials-2.7.0/bin -DEXAMPLES_ENABLE=ON -DEXAMPLES_INSTALL_PATH=/opt/packages/sundials-2.7.0/examples -DLAPACK_ENABLE=ON -DOPENMP_ENABLE=ON -DMPI_ENABLE=ON ../sundials-2.7.0-src
make
make install
