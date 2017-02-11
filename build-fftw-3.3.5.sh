DIR=$PWD
rm -rf fftw-3.3.5-src
rm -rf fftw-3.3.5
rm -rf fftw-3.3.5.tar.gz
wget http://www.fftw.org/fftw-3.3.5.tar.gz
tar -xvf fftw-3.3.5.tar.gz
mv fftw-3.3.5 fftw-3.3.5-src
# mkdir fftw-3.3.5
cd fftw-3.3.5-src
./configure --quiet --enable-mpi --enable-shared --enable-openmp --enable-threads --enable-avx2 --prefix=$DIR/fftw-3.3.5
make
make install
