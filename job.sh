#!/bin/bash

singularity test to_send/container.sif 2> test.stderr > test.stdout
singularity run to_send/container.sif  2> program.stderr > program.stdout