#Use an official Ubuntu image as the base(like a fresh VM)
FROM ubuntu:24.04

#Install the C++ compiler inside the container
RUN apt update && apt install g++ -y

#Copy your C++ source code from your machine into the container
COPY hello.cpp /app/hello.cpp

#Set the working directory
WORKDIR /app

#Compile the program inside the container
RUN g++ hello.cpp -o hello

#Tell the container what to run when it starts
CMD ["./hello"]

