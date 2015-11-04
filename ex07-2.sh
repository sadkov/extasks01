#!/bin/bash

awk "BEGIN {printf \"%d\n\",$1^$2}"
