for((i=1;i<=10;i++)); 
do
if (( i == 1 ))
 then
     echo 1 factorial is  1
else
    temp=1
    for((j=$i;j>1;j--)); do
        temp=$(($temp*$j))
    done
    echo $i factorial is $temp
    fi
done
