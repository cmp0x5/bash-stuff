#!/bin/bash
set -T # or set -o functrace
trap 'echo End of ${FUNCNAME[0]}, child of ${FUNCNAME[1]}' RETURN
# set -T allows trap DEBUG and RETURN to be inherited by shell functions
Func1 () { Func2
}
Func2 () { :
}
Func1
