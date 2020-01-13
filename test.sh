#! /bin/bash

path=`pwd`
# echo 1$path
# function name () {
#    for item in *
# do 
#     if [ -d $item ]; then
#         #  echo 2$item
#          path=$path/$item
#          echo 3$path
#          cd $item
#          if [ "$(ls -A $path)" ];
#          echo 100
#             then name
#             else
#                 echo 200
#          fi 
#     elif [ -f $item ]; then
#          echo 3$path/$item
#     fi
# done 
# }

function name () {
    for item in *
    do 
    if [ "$(ls -A $path)" ];
        then 
        # echo $path
        if [ -d $path ]; then
            # echo 1
            echo $item
            path=$path/$item
            if [ -d $path ]; then
            cd $item
            fi
        fi
        
        
        # echo 5456$path
        sleep 2s
        
        # name
    fi
    done
}


name