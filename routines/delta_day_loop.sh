#! /usr/bin/env bash
#
# Example to demostrate how to loop with specified date range and delta.
# Parameters:
#  start  start date 
#  end    end date 
#  delta  delta number of days 

set -u
set -e

if [ $# -eq 3 ];then 
   start=$(date -d "$1" +%Y%m%d)
   end=$(date -d "$2" +%Y%m%d)
   delta="$3"
else 
   echo "Usage : start(yyyymmdd) end(yyyymmdd) delta"
   echo "        date format = yyyymmdd"
   echo "        both start and end dates are inclusive"  
   exit 1
fi

echo "+++ start=${start} +++"
echo "+++ end=${end} +++"
echo "+++ delta=${delta} +++"

cur="$start"
while [ "$cur" -le "$end" ];do
      nex=$(date -d "${cur} +${delta} days" +%Y%m%d)
      if [ "$nex" -gt "$end" ];then
         nex="$end"
      fi
      echo "do somthing here with cur=${cur} and nex=${nex}"
      cur=$(date -d "${nex} +1 days" +%Y%m%d)      
done

