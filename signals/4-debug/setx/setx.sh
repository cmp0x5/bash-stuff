#!/bin/bash -x

function a {
	b=1000
	return $(( $b / 5 ))
}
a

