#!/bin/bash


#echo "Are you ok? "
#read answer
#echo "$answer is the right response"
#echo "what is you fucking name?"

#read first middle last
#echo "hello $first"


#echo "this scrpit is called $0"
#echo "$0 $1 and $2"
#echo "the number of positional parameters is $#"

dir=/home/czq/test
for filep in fuck[1-5]
do
	if [ -f $filep ]
	then
		cp $filep $dir/$filep.bkp
		echo "$filep is backuped in$dir"
	else
		echo $filep is not existed.
	fi
done


num=0
while [ $num -lt 10 ]
do
	echo -n $num
	num=`expr $num + 1`
done
echo "\n after loop, continue here"
