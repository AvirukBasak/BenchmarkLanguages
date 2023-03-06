#!/bin/bash

TIMEFORMAT="%3R"
mkdir -p bin

# printf "asm:\t\t"
# as -o3 bench.s -o bin/benchs.o && /usr/bin/ld -g bin/benchs.o -o bin/benchs && rm bin/benchs.o
# time ./bin/benchs

printf "c:\t\t"
gcc -o3 bench.c -o bin/benchc
time ./bin/benchc

printf "c++:\t\t"
g++ -o3 bench.cpp -o bin/benchcpp
time ./bin/benchcpp

printf "rust:\t\t"
rustc -C opt-level=3 bench.rs -o bin/benchrs
time ./bin/benchrs

printf "c#:\t\t"
mcs bench.cs
time mono bench.exe
mv bench.exe bin/

printf "java:\t\t"
javac bench.java
time java bench
mv bench.class bin/

printf "js:\t\t"
time node bench.js

printf "php:\t\t"
time php -f bench.php

printf "bash:\t\t"
time bash bench.sh

printf "python:\t\t"
time python3 bench.py
