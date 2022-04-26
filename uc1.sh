#! /bin/bash -x

#As a Simulator start with Flipping a Coin to Display Heads or Tails as winner 
#- Use ((RANDOM)) to find Heads or Tails 
 #- Name the file flipCoinSimulator.sh
coinResult=$((RANDOM%2))
if [ $coinResult -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
