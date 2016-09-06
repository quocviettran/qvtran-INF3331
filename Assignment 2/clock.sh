#!/bin/bash

while true; do

	clear
	if [ "$1" = "--AMPM" ]; then
		date +%r #AM PM 
	else
		date +%T #24H

	fi
	sleep 1
	
done