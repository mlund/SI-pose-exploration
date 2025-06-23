#!/bin/sh

for molarity in 0.005 0.010 0.015 0.020 0.030 0.040 0.060 0.080 0.1; do
RUST_LOG="Debug" $HOME/.cargo/bin/duello \
    scan \
    -1 4lzt.xyz \
    -2 4lzt.xyz \
    --rmin 25 --rmax 100 --dr 1.0 \
    --top topology.yaml \
    --resolution 0.5 \
    --cutoff 1000 \
    --molarity ${molarity} \
    --temperature 300 \
    --pmf pmf_${molarity}.dat
done
