# join two files based on column

# cat f1 
#  a  a1 a2
#  c  c1 c2
#  b  b1 b2
#  d  d1 d2

# cat f2 
# c  c3 c4
# a  a3 a4
# b  b3 b4
# d  d3 d4


awk -F"\t" 'BEGIN {OFS="\t"} {NR==FNR {a[$1]=$0} NR>FNR {print a[$1], $2, $3}' f1 f2 

