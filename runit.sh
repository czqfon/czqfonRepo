#! /bin/sh
name=Tom:dick:harry:john
OLDIFS="$IFS"
IFS=":"

for person in $name
do
	echo "hi $person"
done

IFS="$OLDIFS"
set jill jane jack

for girl in $*
do
	echo hello $girl
done

