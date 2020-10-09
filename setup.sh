git submodule update --init --recursive --remote

cd prism/prism
make && make test
cd ../..

source ./compile_propagator.sh