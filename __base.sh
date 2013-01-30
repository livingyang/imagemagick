#!/usr/bin/env bash


for fileName in ./*;
do
    if [ $fileName != ${fileName/.png/.} ]
    then
        echo $fileName;
    fi
done