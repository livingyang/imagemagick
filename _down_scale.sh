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
			
			mv $fileName ${fileName/"$sourceName"/"$targetName"}
			convert ${fileName/"$sourceName"/"$targetName"} -scale 50% $fileName
		fi
	done
}

ScaleUpImage .png -hd.png
ScaleUpImage .jpg -hd.jpg
