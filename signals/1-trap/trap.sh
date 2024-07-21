#!/bin/bash

echo "if using double quotation marks with the trap command, values inside quotes will be converted immediately upon addition to signal handler table"
echo "if we run:"
cat ./trap-doublequotes.sh
echo "we get:"
./trap-doublequotes.sh

echo -e "\n" 

echo "if using single quotation marks, value is kept as a variable in signal handler table"
echo "if we run :"
cat ./trap-singlequotes.sh
echo "we get:"
./trap-singlequotes.sh

