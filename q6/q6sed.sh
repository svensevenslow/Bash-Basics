#chmod 777 q6sed.sh
#to make file executable

# $1 string to find
# $2 string to replace

#-i option is used to edit in place on the file specified
#-e option indicates the expression/command to run, in this case s/

#Method 1: Using sed
echo "Before"
cat TestProgram.c

sed -i -e "s/$1/$2/g" TestProgram.c

echo "After"
cat TestProgram.c




