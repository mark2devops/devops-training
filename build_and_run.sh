#!/bin/bash
echo "Starting build process..."
g++ hello.cpp -o hello
if [ $? -eq 0 ]; then
	echo "Build successful! Running the program:"
	./hello
else
	echo "Build failed. Check your code."
fi

