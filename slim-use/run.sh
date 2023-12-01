if [ -d "build" ]; then
    # If it exists, remove its contents
    rm -r build/*
else
    # If it doesn't exist, print a message or take alternative actions
    echo "The 'build' directory does not exist. Please create it before running this script."
    # You can add more commands or exit the script if needed
fi
cd build/ && cmake .. 
make
./cs-ssa ../testcases/test.slim.ll