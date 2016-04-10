#! /bin/sh

exec < guest
while read line
do
	echo $line
	echo -n "is this word correct?[y/n]"
	read answer </dev/tty
	case "$answer" in
	[Yy]*)
		continue;;
	*)
		echo "what is the correct sp?"
		read word</dev/tty
		sed "s/$line/$word/g" guest >error
		mv error guest
		echo $line has been changed to $word
	esac
done

