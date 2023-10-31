echo "Moving into Task 2 folder"
cd task2
echo "Making 3 files (a,b,c).txt in task2"
touch a.txt
touch b.txt
touch c.txt
echo "Moving out of Task 2 in main folder"
cd ..
echo "Copying (a,b,c).txt in task2_temp folder"
cp ./task2/a.txt ./task2/b.txt ./task2/c.txt ./task2_temp
echo "Swapping names task2 <> task2_temp"
mv task2 c
mv task2_temp task2
mv c task2_temp