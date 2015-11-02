#!/bin/sh

cat $1 | sed -En "s/([^:]*):([^:]*:){4}([^:]*).*/Home directory of \1=\3/p"
