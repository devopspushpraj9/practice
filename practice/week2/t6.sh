#!/bin/bash


echo "---Disk Check---"
df -h 

echo ""

echo "---Memory Check---"
free -h

echo ""

echo "---Top 5 Processes---"
ps aux | awk '{print $1 $2 $3 $4 $5 $6}' | head -6

