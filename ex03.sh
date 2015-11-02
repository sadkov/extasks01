#!/bin/sh

cat my_table
cat my_table | sed -En 's/(.)(.*)/\2/p'
cat my_table | sed -En 's/(.*)(.)(.)$/\1\3/p'
cat my_table | sed -rn 's/([a-zA-Z0-9]+)([ \t]+)([a-zA-Z0-9]+)([ \t]+)(.*)/\3\2\1\4\5/p'
