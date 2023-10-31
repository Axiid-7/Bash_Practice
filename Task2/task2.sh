#!/bin/bash
echo "Moving in task2 folder"
cd task2
echo "Making 3 files (a.txt, b.txt, c.txt) into task2 folder"
touch a.txt
touch b.txt
touch c.txt 
echo "Moving back in the scripts folder"
cd ..
echo "Copy files into task2_temp"
cp ./task2/a.txt ./task2/b.txt ./task2/c.txt ./task2_temp
echo "Replacing folder names task2 <> task2_temp"
mv task2_temp c
mv task2 task2_temp
mv c task2
