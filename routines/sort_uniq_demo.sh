# keep only one duplicate(distinct)
sort file |uniq
# keep only unique ones(remove duplcates)
sort file |uniq –u

# keep only one duplicate (distinct)
cat file1 file2 | sort | uniq > file3
# keep only unique ones (remove duplicates)
cat file1 file2 | sort | uniq -u > file3

# file2 follows file2
cat file1 file2 > file3
#file1 is on left of flile2
paste file1 file2 > file3
