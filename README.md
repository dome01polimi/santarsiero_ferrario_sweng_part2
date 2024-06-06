# SE4HPCproject - Step 2 CI/CD Pipeline and automation

We automated the build, test and release process with a CI/CD pipeline, triggering Github actions on 'push' events.
## Workflow file
The definition of the action workflow is defined in `./github/workflows/c-cpp.yml`. Here is a brief explanation of the code.
The job runs on the latest Ubuntu environment provided by GitHub.

- Install MPI: The first step updates the package list and installs MPI to run the matrix multiplication library.

- Checkout Repository: This step checks out the project's repository from GitHub, including any submodules.

- Build Application: It creates a build directory, runs CMake to generate build files, and compiles the project.

- Run Tests: The built application is tested by running an MPI job with two processes using mpirun.

- Install Dependencies for Singularity: Several dependencies required to install Singularity (a container platform) are installed.

- Install Go: The Go programming language is installed, which is necessary for building Singularity.

- Set Up Go Environment: The Go binary path is added to the environment variables.

- Install Singularity: Singularity is downloaded, compiled, and installed.

- Verify Singularity Installation: This step checks the installed version of Singularity to ensure it was installed correctly.

- Build Singularity Container: A Singularity container is built using a definition file (Singularity.def).

- Prepare Files for Transfer to Galileo: The container file and a SLURM job script are moved into a directory (to_send) for the upcoming transfer to Galileo cluster.

- SSH to Remote Server: Using sshpass for password-based SSH, the files are transferred to a remote server. The job script is executed on the remote server, and the output is printed. The server job queue status is also checked. 

This workflow streamlines the process of building, testing, and deploying the C/C++ application, while also leveraging Singularity containers for consistent and portable execution environments.

# On Galileo
On Galileo, cluster management and job scheduling is handled by SLURM. We run the container image `container.sif` through a script named `job.sh`, both transfered previously during the workflow. `job.sh` contains the command for *singularity*  to run the image and where to pipe the output, in addition to other setup variables.
