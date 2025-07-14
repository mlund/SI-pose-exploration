#!/bin/sh
#enter dir to save data
cd fixed_er/   

# This script runs the duello program for a range of molarities and temperatures.

#loop over salt concentrations
for m in $(seq 0.0025 0.0025 0.15 | sed 's/0*$//')

do
mkdir -p cs${m}M
cd cs${m}M/	

#loop over desired temperatures
for t in $(seq 275 330)
	
do
	RUST_LOG="Info" cargo run --release \
		-- scan \
    		--mol1 ../../cppm-p18.xyz \
    		--mol2 ../../cppm-p18.xyz \
    		--rmin 37 --rmax 121 --dr 2 \
    		--top ../../topology.yaml \
    		--resolution 0.8 \
    		--cutoff 1000 \
    		--molarity $m \
    		--temperature $t \
    		--fixed-dielectric 77.7 > out_${t}.log 2<&1
done
cd ..
done
