echo "print first number"
read a
echo "print second number"
read b
echo "print the operation"
read op
select op in "+" "-" "*" "/" "end"
do
	case $op in
		"+")
			((c=a+b))
			echo $c
			;;
		"-")
			((c=a-b))
			echo $c
			;;
		"*")
			((c=a*b))
			echo $c
			;;
		"/")
			((c=a/b))
			echo $c
			;;
		"end")
			exit
			;;
done

