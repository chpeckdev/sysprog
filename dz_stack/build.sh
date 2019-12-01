#!/bin/bash

function report()
{
	echo "Error $?"
	exit $1
}
make all || report 1
./stack $* || report 2
