# sudo rm -fr build/
if [ -d "build" ]; then
    # If it exists, remove its contents
    sudo rm -r build/*
else
    # If it doesn't exist, print a message or take alternative actions
    echo "The 'build' directory does not exist. Please create it before running this script."
    # You can add more commands or exit the script if needed
fi
bash ./clean_ir_lib.sh
mkdir -p build && cd build
cmake -S .. -B .
sudo make install