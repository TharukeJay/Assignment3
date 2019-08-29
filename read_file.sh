#!/bin/bash


awk -F'[, ]' '{printf "%s\n", NR,$0}' output.csv > processed.csv


perl -anle '$x+=$_ for(@F);print $x;$x=0;' output.csv >> processed.csv

awk '{min=$1;for(i=1;i<=NF;i++)if($i<min)min=$i;print min}' output.csv >> processed.csv 

echo ""
#awk -F, '{sum=0; for (i=1; i<=NF; i++) {sum+= $i}}END{print "Total, "sum}' output.csv > output2.txt

awk '{max=$1;for(i=1;i<=NF;i++)if($i>max)max=$i;print max}' output.csv >> processed.csv

cat processed.csv
