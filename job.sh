#!/bin/bash

singularity test container.sif 2> test.stderr > test.stdout
singularity run container.sif  2> program.stderr > program.stdout