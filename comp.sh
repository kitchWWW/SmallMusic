#!/bin/bash
timestamp=$(date +%s)
echo "starting run script, with timestamp:"
echo $timestamp
mkdir out/$timestamp
find . -name "*.class" -type f -delete
javac runner.java
echo "Completed compile portion"

java runner $timestamp 65 tenor Brian
echo "Completed run"
cd out/$timestamp

/Applications/Lilypond.app/Contents/Resources/bin/lilypond SmallMusic.ly
open SmallMusic.pdf
cd ..
cd ..
find . -name "*.class" -type f -delete

