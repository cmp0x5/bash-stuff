#!/bin/bash

function ShowError {
	echo An error occurred in the command "'$2'" of line "'$1'"
}
trap 'ShowError $LINENO $BASH_COMMAND; exit 1' ERR 
#if using " instead of ', LINENO would be 6 and BASH_COMMAND would be 'trap' as both 
#would be immediately converted upon addition to signal handler table
function GenError {
	grep 'Foo' <<< Bar
	echo aaa
}
GenError

# if using functions, trap command takes function's final status code. in this example, 
# echo returns 0 and thus ERR is not triggered

