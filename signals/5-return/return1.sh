#!/bin/bash
Func1 () { trap 'echo End of ${FUNCNAME[0]}, \
	child of ${FUNCNAME[1]}' RETURN; }
	
Func2 () { trap 'echo End of ${FUNCNAME[0], \
	child of ${FUNCNAME[1]}' RETURN
	Func1
}
Func2

