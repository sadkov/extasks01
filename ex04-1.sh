#!/bin/sh

echo "Enter word:"
read word
echo
echo "Enter filename:"
read filename

echo "Searching \"$word\" in $filename:"
found=`grep $word $filename | wc -l`
echo "Found $found lines with this word."


