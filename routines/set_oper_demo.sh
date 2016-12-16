#! /bin/bash

# ===== set intersection ======
comm -12 <(sort a.txt|uniq ) <(sort b.txt|uniq )
grep -F -f a.txt b.txt | sort | uniq  

# ====== set difference =======
# b-a
grep -F -v -f a.txt b.txt | sort | uniq  

# a-b
grep -F -v -f b.txt a.txt | sort | uniq  
