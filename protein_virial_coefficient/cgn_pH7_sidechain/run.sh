#!/bin/sh

for molarity in 0.005 0.010 0.015 0.020 0.030 0.040 0.060 0.080 0.1; do
RUST_LOG="Debug" $HOME/.cargo/bin/duello \
    scan \
    -1 7ktz.xyz \
    -2 7ktz.xyz \
    --rmin 32 --rmax 60 --dr 1.0 \
    --top topology.yaml \
    --resolution 0.5 \
    --cutoff 1000 \
    --molarity ${molarity} \
    --temperature 300 \
    --pmf pmf_${molarity}.dat
done
