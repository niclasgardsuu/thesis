#!/bin/sh

# Use this script to automatically compile the document whenever changes are
# made to the text dir or main.tex. Make sure to open main.pdf in a PDF-viewer
# that supports hot/auto-reloading (like evince (Ubuntu default)).

make

while true
do
    make main
    inotifywait -e close_write text/*.tex main.tex
done
