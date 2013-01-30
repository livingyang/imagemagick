#!/usr/bin/env bash

DIR_NAME=$1;

if [ -z $1 ]; then
    echo please input a dir;
    exit;
fi

is_directory()
{
    DirName=$1
    if [ ! -d $DirName ]; then
        return 1
    else
        return 0
    fi
}

if is_directory $DIR_NAME; then
    echo $DIR_NAME is dic;
else
    echo $DIR_NAME is not dic;
    exit;   
fi

convert_to_caf()
{
cd $DIR_NAME;
extName=$1;
echo $extName;

for fileName in ./*;
do
    newName=${fileName/.$extName/.caf};

    if [ $fileName != $newName ]
    then
        echo $fileName;
        echo $newName;
        afconvert -f caff -d LEI16 $fileName $newName;
    fi
done
}

convert_to_caf mp3;
convert_to_caf wav;