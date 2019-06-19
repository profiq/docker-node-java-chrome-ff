#!/bin/bash
jv=$(java -version 2>&1 | head -1 | cut -d'"' -f2 | sed '/^1\./s///' | cut -d'.' -f1)
ch=$(google-chrome --version 2>&1 | head -1 | cut -d'"' -f2 | sed '/^1\./s///' | cut -d'.' -f1 | sed '/Google Chrome/s///')

if [ $jv -ge 8 ] && [ $ch -ge 74 ]; then
    echo ok
    exit 0
else
    echo not ok
    exit 1
fi