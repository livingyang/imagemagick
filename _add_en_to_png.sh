#!/usr/bin/env bash


for fileName in ./*;
do
    if [ $fileName != ${fileName/.png/.} ]
    then
        echo $fileName;
        mv $fileName ${fileName/.png/-en.png};
    fi
done