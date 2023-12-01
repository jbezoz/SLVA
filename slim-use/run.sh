rm -r build/*
cd build/ && cmake .. 
make
./cs-ssa ../testcases/test.slim.ll