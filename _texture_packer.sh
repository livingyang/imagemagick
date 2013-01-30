#!/usr/bin/env bash


for fileName in ./*;
do
	echo $fileName

	if [ -d $fileName ];
		then
		TexturePacker --format cocos2d \
			--data ${fileName:2}-hd.plist \
			--sheet ${fileName:2}-hd.pvr.ccz \
			--auto-sd \
			--dither-fs-alpha \
			--opt RGBA4444 \
			$fileName;

	fi
done
