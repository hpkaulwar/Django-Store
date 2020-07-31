# output as png image
 set terminal png

 # name of image
 set output "apachebenchmark_100_10.png"

 # graph a title
 set title "ab -n 100 -c 10 -g hist.tsv http://35.244.204.124/"

 # nicer aspect ratio for image size
 set size 1,0.7

 # y-axis grid
 set grid y

 # x-axis label
 set xlabel "requests made"

 # y-axis label
 set ylabel "response time (ms)"

 # plot data from "foo.tsv" using column 9 with smooth sbezier lines
 plot "hist.tsv" using 9 smooth sbezier with lines title "server:"
