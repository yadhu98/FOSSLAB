#!/bin/bash
echo "enter first number"
read a
echo "enter second number"
read b
echo "enter the operation"
read op
case $op in
	+)
		((c=a+b))
		echo $c
		;;
	-)
		((c=a-b))
		echo $c
		;;
	"*")
		((c=a*b))
		echo $c
		;;
	/)
		((c=a/b))
		echo $c
		;;
	*)
		echo "Invalid Input!!"
		;;
esac

