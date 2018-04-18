echo "enter a number"
read n
s=0
i=0
while((i<=n))
do
	((s=s+i))
	((i=i+1))
done
echo "sum is",$s
