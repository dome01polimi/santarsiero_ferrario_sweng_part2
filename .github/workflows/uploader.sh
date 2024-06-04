#!/usr/bin/expect -f

# Get the password from the second argument
set pass [lindex $argv 1]

# Remove the password from the argument list
set argv [lrange $argv 2 end]

# Set timeout to unlimited
set timeout -1

# Loop through each file in the modified argument list
foreach filename $argv {
    spawn scp -o StrictHostKeyChecking=no $filename a08trb58@login.g100.cineca.it:~/
    expect {
        "password:" {
            send "$pass\r"
            exp_continue
        }
        eof {
            exit
        }
    }
}
