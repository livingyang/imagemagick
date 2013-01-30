#!/usr/bin/env bash

hdImageName=${1};
normalImageName=${1/-hd./.};

    if [ $hdImageName != $normalImageName ]
    then
        echo $hdImageName;
        rm $normalImageName;
        convert $hdImageName -scale 50% $normalImageName;
    fi
