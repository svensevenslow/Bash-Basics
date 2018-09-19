#chmod 777 q7.sh
#to make the file executable

#use
#touch a.js b.js 
#to create empty .js files
#for testig this code out

for file in *"$1"
do 
  sedcmd="s/\(.*\.\)$1/\1$2/"
  mv $file `echo $file | eval sed '$sedcmd'`
done
