#chmod 777 q1WhileLoop.sh

#Part2
rename=90
while (( rename++ < 95 ))   
do
  convert 2011-08-15-00$rename.jpg -scale 10% 2011-08-15-00$rename-abcd-small.jpg
done

