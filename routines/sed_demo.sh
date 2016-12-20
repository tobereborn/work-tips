#!/bin/bash


# replace last value 'old' to 'new' in one line
sed 's/old\($\)/new\1/g' input.txt  >  out.txt
