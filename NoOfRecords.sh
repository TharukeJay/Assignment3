#!/bin/bash

#while IFS='|' read OPTOCD OPTEAN OPTREF OPTPOD OPTPBR OPTPBRN OPTBCH OPTPSQ OPTAMT OPTDCS OPTTCD OPTTCDD OPTNL1 OPTNL2 OPTNL3 OPTNL4 OPTEXT OPTEXD
#do
#  print $
#done < OPTPF.csv

awk -F '[| ]' '{a[$1]++}END{for(i in a){print i, a[i]}}' OPTPF.csv > OPTPFrecs.csv

cat OPTPFrecs.csv

cat OPTPFcol.csv

awk -F '[| ]' 'BEGIN {OFS=","} { print $1, $2, $4, $9}' OPTPF.csv > OPTPFcol.csv

awk -F '[| ]' '{ if ($9 >= 15000) { print } }' | wc -l OPTPF.csv > OPTPFwc.csv

cat OPTPFwc.csv
