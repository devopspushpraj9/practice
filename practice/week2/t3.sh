#!/bin/bash

for server in "web01" "web02" "db01"
do
	echo "$server" >> server.txt
	echo "File created Successfully: $server"
done
