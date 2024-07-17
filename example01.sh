# GMT Example 01
# 
# Create two contour maps of the low order geoid using the
# Hammer equal area projection. Show one map centered on
# Greenwich and one on the dateline. Draw positive contours
# with a solid pen and negative contours with a dashed pen.
# Annotations should occur at 50 m intervals. 
gmt begin ex01
    gmt subplot begin 2x1 -A -M0.5c -Blrtb -Bafg -T"Low Order Geoid" -Fs16c/0 -Rg -JH16c
        gmt coast -JH180/? -Glightbrown -Slightblue -c0,0
        gmt grdcontour @osu91a1f_16.nc -C10 -A50+f7p -Gd10c -Ln -Wcthinnest -Wathin,- -T+d8p/2p+l
        gmt grdcontour @osu91a1f_16.nc -C10 -A50+f7p -Gd10c -Lp -T+d8p/2p+l

        gmt coast -JH0/? -Glightbrown -Slightblue -c1,0
        gmt grdcontour @osu91a1f_16.nc -C10 -A50+f7p -Gd10c -Ln -Wcthinnest -Wathin,- -T+d8p/2p
        gmt grdcontour @osu91a1f_16.nc -C10 -A50+f7p -Gd10c -Lp -T+d8p/2p
    gmt subplot end
gmt end show
