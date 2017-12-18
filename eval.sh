val=0;
while IFS=' ' read f s
do
	if [ "$s" == "+" ];
	then
		val=$((val + f))
	elif [ "$s" == "-" ];
	then
		val=$((val - f))
	elif [ "$s" == "*" ];
	then
		val=$((val * f))
	else
		val=$((val / f))
	fi
done < "$1"
echo "$val"
