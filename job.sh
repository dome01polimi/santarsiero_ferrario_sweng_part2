#!/bin/bash

home_path="/g100/home/usertrain/a08trb58/"

singularity run $home_path"santarsiero_ferrario_sweng_part2/container.sif" 2> test.stderr > test.stdout
singularity run $home_path"santarsiero_ferrario_sweng_part2/container.sif" 2> program.stderr > program.stdout