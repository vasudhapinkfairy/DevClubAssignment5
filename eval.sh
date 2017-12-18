value=0;
while IFS=' ' read f s
do
	if [ "$s" == "+" ];
	then
		value=$((value + f))
	elif [ "$s" == "-" ];
	then
		value=$((value - f))
	elif [ "$s" == "*" ];
	then
		value=$((value * f))
	else
		value=$((value / f))
	fi
done < "$1"
echo "$value"
