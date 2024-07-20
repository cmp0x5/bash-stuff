#!/bin/bash

tput civis; tput bold #hide cursor
trap 'tput cnorm; exit' 0 #return cursor on exit
echo -ne "\t\t"
while kill -EXIT $1 2>&- #if PID ($1) active, lock stderr
do
	for i in \| \/ \- \\ \| \/ \- 
	do
		echo -en "\b$i" #return a \b position and write $i
		sleep 0.2
	done
done
echo -e "\n"

