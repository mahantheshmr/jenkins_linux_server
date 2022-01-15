#!/bin/bash
echo"$0"

#Number of arguments on the command line.
echo '$#:' $#
#Process number of the current process.
echo '$$:' $$
#Display the 3rd argument on the command line, from left to right.
echo '$3:' $3
#Display the 10th argument on the command line, from left to right.
echo '${10}:' ${10}
#Display the name of the current shell or program.
echo '$0:' $0
#Display all the arguments on the command line using * symbol.
echo '$*:' $*
#Display all the arguments on the command line using @ symbol.
echo '$@:' $@
date
#check the  status of the last executed command here its checks date command 
echo '$?:' $?
date
#check the process id of last command in background
echo '$!:' $!


