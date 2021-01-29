#!/bin/bash

list="Alabama Alaska arizona Arkansas Colorado"
list=$list" Connecticut"

for state in $list
do 
	echo "Have you ever visited $state"
done