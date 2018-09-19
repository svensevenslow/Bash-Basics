#compile each c file
#link them to form executable
#run executable
#check at each step for success of previous command

filename1=$(basename "$1" .c)
filename2=$(basename "$2" .c)

#-c option means to only compile and not link
gcc "$1" -o "$filename1.o" -c
# $? is 0 if previous command successful
if [ $? -eq 0 ]; then
  gcc "$2" -o "$filename2.o" -c
  if [ $? -eq 0 ]; then
    gcc -o linkedCode "$filename1.o" "$filename2.o"     #linking both the c files
    if [ $? -eq 0 ]; then
      ./linkedCode    #executing the linked file
    fi
  fi
fi


