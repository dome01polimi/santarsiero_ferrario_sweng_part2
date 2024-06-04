#!/usr/bin/expect -f

# Get the password from the second argument
set pass [lindex $argv 1]

set filename [lindex $argv 2]


# Set timeout to unlimited
set timeout -1

# Loop through each file in the modified argument list
spawn scp -o StrictHostKeyChecking=no -r $filename a08trb58@login.g100.cineca.it:~/
expect {
    "password:" {
        send "$pass\r"
        exp_continue
    }
    eof {
        exit
    }
}
