#!/bin/bash

function ShowError {
	echo An error occurred in the command "'$2'" of line "'$1'"
}
function GenError {
	ls xpto
	echo aaa
}
set -Ee #-E = trap err inherited for shell functions, -e=aborts on non-zero return
trap 'ShowError $LINENO $BASH_COMMAND; exit 1' ERR 
GenError

