#!/bin/bash
A=$1
X=$((echo $A) | tr "/" "_" )
mkdir var
cp -p $1/**/*.jpg var
cd var
convert -append $(ls -t -r | tr " " "\n" | tr "\n" " ") ../$X".jpg"
cd ..
rm -r var
