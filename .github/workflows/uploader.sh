#!/usr/bin/expect -f
set filename [lindex $argv 0]
set pass [lindex $argv 1]

set timeout -1
spawn scp -o StrictHostKeyChecking=no $filename a08trb58@login.g100.cineca.it:~/
expect {
        password: {send "$pass\r" ; exp_continue}
	        eof exit
	}