#! /bin/sh

#set joe jetty tom sam jake

#while [ $# -gt 0 ]
#do
#	echo $1
#	shift
#done

if [ $# -lt 1 ]
then
	echo "Usage:$0 file name">&2
	exit 1
fi
count=1
cat $1|while read line
do
	[ $count -eq 1 ] && echo "processing file $1 ..." >/dev/tty
	echo $count $line
	count=`expr $count + 1`
done >temp$$
mv temp$$ $1

