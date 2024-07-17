REM GMT Example 01
REM 
REM Create two contour maps of the low order geoid using the
REM Hammer equal area projection. Show one map centered on
REM Greenwich and one on the dateline. Draw positive contours
REM with a solid pen and negative contours with a dashed pen.
REM Annotations should occur at 50 m intervals. 

gmt begin ex01
    gmt subplot begin 2x1 -A -M0.5c -Blrtb -Bafg -T"Low Order Geoid" -Fs16c/0 -Rg -JH16c
        gmt coast -JH180/? -Glightbrown -Slightblue -c0,0
        gmt grdcontour @osu91a1f_16.nc -C10 -A50+f7p -Gd10c -Ln -Wcthinnest -Wathin,- -T+d8p/2p+l
        gmt grdcontour @osu91a1f_16.nc -C10 -A50+f7p -Gd10c -LP -T+d8p/2p+l

        gmt coast -JH0/? -Glightbrown -Slightblue -c1,0
        gmt grdcontour @osu91a1f_16.nc -C10 -A50+f7p -Gd10c -Ln -Wcthinnest -Wathin,- -T+d8p/2p
        gmt grdcontour @osu91a1f_16.nc -C10 -A50+f7p -Gd10c -LP -T+d8p/2p
    gmt subplot end
gmt end show

REM SUBPLOT
REM The subplot determines what will fit, so we specify
REM the map width with `?`
REM
REM GRDCONTOUR
REM L option is used to select negative (n) or positive
REM (p) contours only
REM T option makes downhill ticks to be drawn in innermost closed contours
REM +l adds `+` and `-` as labels
