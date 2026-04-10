#!/bin/bash

# Demonstrates usage of IFS (Internal Field Separator)

echo "Example 1: Default IFS (space)"
read name1 name2
echo "$name1"
echo "$name2"

echo "-----------------------------"

echo "Example 2: Custom IFS (comma)"
IFS=","
read name3 name4
echo "$name3"
echo "$name4"

echo "-----------------------------"

echo "Example 3: String splitting using IFS"
IFS=":"
str="bat:ball:stadium"

for word in $str; do
    echo "$word"
done
