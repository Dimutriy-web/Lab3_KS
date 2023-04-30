#!/bin/bash
cd /home/grid/testbed/tb325/Lab/vec_samples/src 
ml icc
arr=( "fpu" "vme" "de" "pse" "tsc" "msr" "pae"
for j in "${arr[@]}"; do
for i in {1..3}; do
x1=$(date +%M)
x2=$(date +%S)
echo icc -O$i -m$j LAB3.cpp -o go-$x1-$x2
echo "$j $i:"
time ./go-$x1-$x2
done 
done
`
