DIR=$PWD
rm -rf fftw-3.3.6-pl1-src
rm -rf fftw-3.3.6-pl1
rm -rf fftw-3.3.6-pl1.tar.gz
wget http://www.fftw.org/fftw-3.3.6-pl1.tar.gz
tar -xvf fftw-3.3.6-pl1.tar.gz
mv fftw-3.3.6-pl1 fftw-3.3.6-pl1-src
# mkdir fftw-3.3.6-pl1
cd fftw-3.3.6-pl1-src
./configure --quiet --enable-mpi --enable-shared --enable-openmp --enable-threads --enable-avx2 --prefix=$DIR/fftw-3.3.6-pl1
make
