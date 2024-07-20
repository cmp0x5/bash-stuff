#!/bin/bash

trap "rm -f /tmp/output.txt" 0
yum -y update > /tmp/output.txt
grep -qi "kernel" /tmp/output.txt && echo "KERNEL UPDATED"

