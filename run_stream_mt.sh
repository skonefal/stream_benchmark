#!/bin/bash

if [ "$#" -ne 1 ]; then
	echo "Usage: run_stream_mt.sh [num_threads]"
	exit
fi
export OMP_NUM_THREADS=$1
echo "Running stream_mt with $OMP_NUM_THREADS threads."
./stream_mt
