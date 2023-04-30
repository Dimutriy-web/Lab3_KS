#!/bin/bash
cd /home/grid/testbed/tb325/Lab/vec_samples/src 
ml icc
arr=( "-xSSE2" "-xSSE3" "-xAVX" "-O1" "-O2" "-O3" 
for j in "${arr[@]}"; do
for i in {1..3}; do
x1=$(date +%M)
x2=$(date +%S)
icpc -std=c++17 -O$i -$j LAB3.cpp -o go-$x1-$x2
echo "$j $i:"
time ./go-$x1-$x2
done 
done

