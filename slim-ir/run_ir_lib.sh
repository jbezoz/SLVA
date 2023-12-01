sudo rm -fr build/
bash ./clean_ir_lib.sh
mkdir -p build && cd build
cmake -S .. -B .
sudo make install