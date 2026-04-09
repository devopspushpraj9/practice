#!/bin/bash

lines="1-I received a new task today.
2-The task requires me to practice Bash scripting.
3-I created a script to manage logs and files.
4-The script separates errors, warnings, and info messages.
5-This helps me learn DevOps concepts step by step."

name="t4.txt"

echo "$lines" >> "$name"

wc -l "$name"
