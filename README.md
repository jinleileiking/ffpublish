COPY FROM https://github.com/leixiaohua1020/simplest_ffmpeg_streamer/blob/master/simplest_ffmpeg_streamer/simplest_ffmpeg_streamer.cpp

# usage


## ffmpeg compile 

```
./configure --enable-shared --enable-pic
make
sudo make install
```

## build publish

`gcc -o publish publish.c -Iffmpeg/include -Lffmpeg/lib/ -lavformat -lavfilter -lavcodec -lswscale -lavutil -lswresample`

`publish ./a.flv "rtmp://xxxxxx"`
