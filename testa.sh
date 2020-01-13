#! /bin/bash

echo "Enter Directory"
read dir1

count=0

function name () {
    dir=$1
    cd $dir

    for item in *
    do
        if [ -d $item ]
            then
            for((i=0;i<$count;i++)); do
                printf " "
            done
            if [ $count == 0 ]  
                then
                printf "$item"
            else
                printf "|----$item"
            fi
            echo
            # cd $item
            count=$(($count+1))
            name $item
            cd ..
            count=$(($count-1))
        else 
            # for((i=0;i<$count;i++)); do
            #     printf ""
            # done
            if [ $count == 0 ]  
                then
                printf "$item"
            else
                printf " |      |----$item"
            fi
            echo
        fi
        
    done
}

if [ -d "$dir1" ] 
then
    name "$dir1"
fi
