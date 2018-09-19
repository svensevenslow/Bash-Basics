#compile each c file
#link them to form executable
#run executable

#-c option means to only compile and not link
filename1=$(basename "$1" .c)
gcc "$1" -o "$filename1.o" -c

filename2=$(basename "$2" .c)
gcc "$2" -o "$filename2.o" -c

#linking both the c files
gcc -o linkedCode "$filename1.o" "$filename2.o"

#executing the linked file
./linkedCode
