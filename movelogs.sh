#!/bin/sh

for file in *log*
do
    mv $file "year=$(date +%Y -r $file)/";
done
