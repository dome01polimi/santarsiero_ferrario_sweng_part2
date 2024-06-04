#!/bin/bash

singularity  ../container.sif 2> test.stderr > test.stdout
singularity  ../container.sif  2> program.stderr > program.stdout
