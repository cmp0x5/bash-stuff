#!/bin/bash
trap 'read -p "line $LINENO-> $BASH_COMMAND"' DEBUG
#read demands enter to be pressed, can replace set -x and set -v
Num10=1o; Num5=5
echo $((Num5*Num10))
