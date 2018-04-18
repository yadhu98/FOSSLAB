#!/bin/bash
read -p "enter cpu amount="c
read -p "enter mem value="m
ps -aeo pid=,pcpu=,pmem=,comm= --sort= -pcpm |
while read pid cpu mem comm
do
	if(($(echo "$cpu>$c"|bc -l)||$(echo "$mem>$m"|bc -l)))
	then
		kill $pid
		echo "killed $comm"
	fi
done

