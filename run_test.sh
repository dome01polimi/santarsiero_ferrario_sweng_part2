#!/bin/bash

mpirun -np 2 ./build/test_multiplication 2> program.stderr > program.stdout
