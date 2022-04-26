#! /bin/bash -x
#Modify the earlier UC 2 to continue till either of them have won 21 times.
# Show if it’s a Win or Tie. If Win then who won and by how much
headCount=0
tailCount=0
while [ 1 ]
do
	coinResult=$((RANDOM%2))
	if [ $coinResult -eq 1 ]
	then
		headCount=$((headCount + 1))
		if [ $headCount -eq 21 ]
		then
			echo "Head Count is : $headCount"
			echo "Tail Count is : $tailCount"
			diff=$((headCount - tailCount))
			echo "Head has tossed 21 times and won by $diff"
			break
		fi
	else
		tailCount=$((tailCount + 1))
		if [ $tailCount -eq 21 ]
		then
			echo "Head Count is : $headCount"
			echo "Tail Count is : $tailCount"
			diff=$((tailCount - headCount))
			echo "Tail has tossed 21 times and won by $diff"
			break
		fi

	fi
done
