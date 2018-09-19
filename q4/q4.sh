#chmod 777 filename
#to make file executable

#to run 
#./q4.sh testFile

#Method 1
wc -l $1 | awk '{ print $1 }'

#Method 2
wc -l < $1

#Method 3
cat $1 | wc -l

#Method 4
wc -l $1 | cut -d' ' -f1 
