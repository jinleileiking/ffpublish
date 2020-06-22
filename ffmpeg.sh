#!/bin/bash

cmd="ffmpeg -re -i ~/flvs/source.200kbps.768x320.flv "
for i in $(seq 1 50) 
do   
    cmd="${cmd} -vcodec copy -f flv 'rtmp://xxxxxxxxxxxxxxxxxxxxxxxx/name${i}'"
done    

echo $cmd
eval $cmd
