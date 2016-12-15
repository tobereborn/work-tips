#! /bin/bash

folder="/var/www/"
file="/var/www/log"

# execution premission
if [ ! -x "$folder"]; then
  mkdir "$folder"
fi

# directory existence
if [ ! -d "$folder"]; then
  mkdir "$folder"
fi

# file existence
if [ ! -f "$file" ]; then
  touch "$file"
fi

# empty var
if [ ! -n "$var" ]; then
  echo "$var is empty"
  exit 0
fi

# equal string
if [ "$var1" = "$var2" ]; then
  echo '$var1 eq $var2'
else
  echo '$var1 not eq $var2'
fi
