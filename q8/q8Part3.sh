#compile each c file
#link them to form executable
#run executable
#-c option means to only compile and not link

filename1=$(basename "$1" .c)

#compiling only if c file newer than object file or object file does not exist
if [ "$1" -nt "$filename1.o" ] || [ ! -e "$filename1.o" ]; then
gcc "$1" -o "$filename1.o" -c
echo "Compiled file1.c to form object file"
fi

filename2=$(basename "$2" .c)
if [ "$2" -nt "$filename2.o" ] || [ ! -e "$filename2.o" ]; then
gcc "$2" -o "$filename2.o" -c
echo "Compiled file2.c to form object file"
fi

#linking both the c files only if object files are newer than executable file or executable does not exist
if [ "$filename1.o" -nt linkedCode ] || [ "$filename2.o" -nt linkedCode ] || [ ! -e linkedCode ]; then
gcc -o linkedCode "$filename1.o" "$filename2.o"
echo "Linked both the object files"
fi

#executing the linked file
./linkedCode
