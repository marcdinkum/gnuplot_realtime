#
# Realtime updating gnuplot
#
# Marc Groenewegen 2017
#

# script polls a file and does a replot when its mtime changes

filename="data.gnuplot"

file_exists(file) = system("[ -f '" . file . "' ] && echo '1' || echo '0'") + 0
prev_mtime = system("get_mtime.sh " . filename)

set style fill solid
set boxwidth 0.5
set key off
set title "Match timing"
set xlabel "Match #"
set ylabel "Delta time (msec)"

set xrange [0:20]
set yrange [-1000:1000]

plot filename w boxes linecolor rgb "blue"

while(1){
  mtime = system("get_mtime.sh " . filename)
  if(mtime != prev_mtime) {
    if (file_exists(filename)) { replot }
    prev_mtime = mtime
  }
  pause 0.5
}

