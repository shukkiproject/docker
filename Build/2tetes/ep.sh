#!/bin/bash
# or sh

# we can use bash now

for S in /ep.d/*.sh; 
do
	test -x "${S}" && "${S}"
done


echo "CMD=$@"

# echo $SHELL
exec "$@"