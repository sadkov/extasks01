#!/bin/sh

echo "Enter word:"
read word
echo
echo "Enter filename:"
read filename

echo "Searching \"$word\" in $filename: with awk"
found=`awk '/$word/{lines++}END{print lines}' $filename`
echo "Found $found lines with this word."


