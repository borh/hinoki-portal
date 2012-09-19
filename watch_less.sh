#!/bin/bash
while true; do
    fs=`find css/ -iname "*.less"`
    inotifywait -qe modify $fs
    for f in $fs; do
        lessc -x $f ${f%.*}.css
    done
done
