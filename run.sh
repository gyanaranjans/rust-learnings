clang main.c -o main
./main 

clang -S -emit-llvm main.c

llvm-as main.ll -o main.bc
llc main.bc -o main.s
clang main.s -o mainllvms

./mainllvms
