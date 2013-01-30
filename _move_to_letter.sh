#!/usr/bin/env bash


is_PNG_file()
{
	fileName=$1;
	if [ "PNG" == ${fileName##*.} ]; then
		return 0;
	else
		return 1;
	fi
}

for fileName in ./*;
do
    if is_PNG_file $fileName;
    then
        echo $fileName;
        mv $fileName ${fileName/.PNG/.png};
    fi
done