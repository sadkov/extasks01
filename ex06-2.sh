#!/bin/sh

echo "Enter pattern to delete from files:"
read pattern

sed -i "/\b$pattern\b/d" $@
 
