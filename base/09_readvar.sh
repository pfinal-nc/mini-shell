#!/bin/bash

echo Alabama Alaska Arizona > states

file="states"
for state in `cat $file`
do
	echo "Visit beautiful $state"
done