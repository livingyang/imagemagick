#!/usr/bin/env bash

for fileName in ./*;
do
    newName=${fileName//-hd./.};
    
    if [ $fileName != $newName ]
    then
        #echo $fileName;
        #echo $newName;
        echo move $fileName to $newName;
        mv $fileName $newName;
    fi
done

#sh ./_down_scale.sh