#!/bin/bash

singularity run 'santarsiero_ferrario_sweng_part2/container.sif' 2> test.stderr > test.stdout
singularity run 'santarsiero_ferrario_sweng_part2/container.sif' 2> program.stderr > program.stdout
