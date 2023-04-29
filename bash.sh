#!/bin/bash
grep 'flag' /proc/cpuinfo | head -n 1

for i in '-xSSE2' '-xSSE3' '-xAVX' '-O1' '-O2' '-O3'; do
    cmd="icpc $i -std=c++17 src/LAB3.cpp -o test"
    echo $cmd
    eval $cmd
    time ./test
done
