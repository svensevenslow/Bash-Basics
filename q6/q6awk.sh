#chmod 777 q6awk.sh
#to make file executable

# $1 string to find
# $2 string to replace

#Method 2: Using awk
echo "Before"
cat TestProgram.c

echo "After"
awk -i inplace '{gsub(/'$1'/,"'$2'"); print;}' TestProgram.c 
cat TestProgram.c
