#!/bin/bash


home_path="/g100/home/usertrain/a08trb58/"

mkdir -p $home_path/out

singularity test $home_path"to_send/container.sif" 2> ../out/test.stderr > ../out/test.stdout 
singularity run $home_path"to_send/container.sif" 2> ../out/program.stderr > ../out/program.stdout

