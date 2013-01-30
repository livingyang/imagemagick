#!/usr/bin/env bash

for fileName in ./*;
do
    if [ $fileName != ${fileName/-hd./.} ]
    then
        echo $fileName;
        rm $fileName;
    fi
done