#chmod 777 q1ForLoopSeq.sh

#Part1
#Eg: convert 2011-08-15-0097.jpg -scale 10% 2011-08-15-0097-abcd-small.jpg

rename=90
for i in $(seq 5)
do
  rename=$(($rename+1))
  convert 2011-08-15-00$rename.jpg -scale 10% 2011-08-$rename-abcd-small.jpg
done





