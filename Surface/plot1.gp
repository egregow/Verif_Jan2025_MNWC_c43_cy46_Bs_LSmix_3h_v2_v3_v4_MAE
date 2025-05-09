set terminal png
set output "fc_00000000_00000000_METCOOP_ALL_VI_0_thresholds.1.png"
set datafile missing "-99"
set title "Frequency  for Visibility (m)\n   Selection: METCOOP    266 stations\n  Period: 20250110-20250130\n  Used {00,03,...,21} + 00 01 ... 12" 

set style line 1 lt 0 lw 1 pt 5 # use black thin lines
set style line 2 lt 8 lw 1 pt 1 # use black thicker lines
set grid
set xlabel "thresholds m"
set ylabel "Frequency"
set logscale x
 
 set arrow  1 from  1000.00000,graph 0.05 to  1000.00000,graph 0.01 lt -1 lw 2 
 set arrow  2 from  5000.00000,graph 0.05 to  5000.00000,graph 0.01 lt -1 lw 2 
 set arrow  3 from  10000.0000,graph 0.05 to  10000.0000,graph 0.01 lt -1 lw 2 
 set arrow  4 from  20000.0000,graph 0.05 to  20000.0000,graph 0.01 lt -1 lw 2
 plot 'c_00000000_00000000_METCOOP_ALL_VI_0_cy43.scores2' using 2:13 title 'OBS' with linespoints lt 5 lw 2 pt 7,'c_00000000_00000000_METCOOP_ALL_VI_0_cy43.scores2' using 2:14 title 'cy43' with linespoints lt 1 lw 2 pt 7,'c_00000000_00000000_METCOOP_ALL_VI_0_cy46_v2.scores2' using 2:14 title 'cy46_v2' with linespoints lt 2 lw 2 pt 7,'c_00000000_00000000_METCOOP_ALL_VI_0_cy46_v3.scores2' using 2:14 title 'cy46_v3' with linespoints lt 3 lw 2 pt 7,'c_00000000_00000000_METCOOP_ALL_VI_0_cy46_v4.scores2' using 2:14 title 'cy46_v4' with linespoints lt 4 lw 2 pt 7