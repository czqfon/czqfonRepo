#!/usr/bin/sh

guestfile=/home/czq/guests
if [ ! -f "$guestfile" ]
then
	echo "`basename $guestfile` non-existent"
	exit 1
fi

PLACE="Saxx's";export PALCE
Time=`date +%H`
Time=`expr $Time + 1`
set cheese crachers shrimp drinks "hot dogs" sandwiches

for person in `cat $guestfile`
do
	if [ $person = root ]
	then 
		continue
	else
		cat <<-FINIS
		Hi ${person}! please jion me at $PLACE for a party!
		meet me at $Time o'clock.
		i will bring icebream, woudld you please bring $1 and 
		anything else

		yours
		johnny@`hostname`

		FINIS
		shift
		if [ $# -eq 0 ]
		then
			set cheese crachers shrimp drinks "hot dogs" sandwiches
		fi
	fi
done

echo "bye..."
