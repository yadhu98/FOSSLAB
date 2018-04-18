echo "enter a number"
read n
s=0
for((i=0;i<=n;i++))
do
	((s=s+i))
done
echo "sum is"$s
