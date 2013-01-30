#!/usr/bin/env bash


for fileName in ./*;
do
	if [ $fileName != ${fileName/.png/.} ]
		then
		if [ $fileName == ${fileName/-hd.png/.} ]
			then
			rm $fileName;
		fi
	fi
done