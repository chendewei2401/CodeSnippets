#!/usr/bin/env bash

startdate=20141120
enddate=20141122

dates=()
for (( date=${startdate}; date != ${enddate}; )); do
    dates+=( ${date} )
    date=`date --date=${date} + 1 days +'%Y%m%d'`
done
echo "${dates[@]}"