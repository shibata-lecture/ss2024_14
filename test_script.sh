#!/bin/bash

result=$(./script.sh)

if [ $result = "hello" ];
then
	echo "OK"
	exit 0
else
	echo "NG" 1>&2
	exit 1
fi
