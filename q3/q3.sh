#chmod 777 filename 
#to make file executable

#to run file 
#./q3.sh test

#Method 1
awk 'END {print NR}' $1 > check1

#Method 2
awk 'BEGIN { tot=0; } { for(i = 0; i < NF; i++); tot++; } END { print tot; }' $1 > check2 #put output of awk command in file check1

wc -l $1 | awk '{ print $1 }' > check3 #move output of wc -l command to check3

#using diff command to check whether output same or not 
if diff check1 check3  > /dev/null
then
  echo "Output same as wc -l command"	
else
  echo "Error! output not same"
fi

if diff check2 check3  > /dev/null
then
  echo "Output same as wc -l command"	
else
  echo "Error! output not same"
fi

