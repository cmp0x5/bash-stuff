#!/bin/bash

trap 'ReturnValue=$?; echo Finished; exit $ReturnValue' EXIT
read -n1 -p 'Type "F" to exit, or something else to get a different exit value: ' Char
echo
[[ $Char == [Ff] ]] && exit
ls /foo/bar/

