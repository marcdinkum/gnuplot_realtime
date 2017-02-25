Script for realtime plotting with Gnuplot.

This example updates twice per second (0.5 sec delay) and uses the file
data.gnuplot. Change these settings if you like.

The helper script get_mtime.sh reads the modification time of the specified
file.

Start as follows:

gnuplot looper.gnuplot

Every time you write new data to data.gnuplot, the plot is updated

