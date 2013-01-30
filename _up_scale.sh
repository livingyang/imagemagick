#!/usr/bin/env bash

function ScaleUpImage()
{
	sourceName=$1;
	targetName=$2;

	for fileName in *$sourceName;
	do
		if [ -f $fileName ]
			then
			echo convert $fileName to ${fileName/"$sourceName"/"$targetName"};
			convert $fileName -scale 200% ${fileName/"$sourceName"/"$targetName"};
		fi
		#echo $fileName
		#echo ${fileName/"$sourceName"/"$targetName"}
	done
}

ScaleUpImage .png -hd.png
ScaleUpImage .jpg -hd.jpg
